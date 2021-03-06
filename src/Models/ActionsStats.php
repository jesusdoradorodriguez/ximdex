<?php

namespace Ximdex\Models;

use Ximdex\Models\ORM\ActionsStatsOrm;

class ActionsStats extends ActionsStatsOrm
{
    /**
     * @param null $actionId
     * @param $nodeId
     * @param $userId
     * @param $method
     * @param $duration
     * @return bool|null|string
     */
    function Create($actionId = null, $nodeId, $userId, $method, $duration)
    {
        $this->set('IdAction', $actionId);
        $this->set('IdNode', $nodeId);
        $this->set('IdUser', $userId);
        $this->set('Method', $method);
        $this->set('TimeStamp', time());
        $this->set('Duration', $duration);
        if (parent::add()) {
            return $this->get('IdStat');
        }
        return NULL;
    }

    /**
     * @param null $userId
     * @return array|null
     */
    function getTotals($userId = NULL)
    {
        $regs = array();
        if (!is_null($userId)) {
            $condition = "IdUser = %s";
            $params = array('IdUser' => $userId);
        } else {
            $condition = '1';
            $params = NULL;
        }
        $result = $this->find('IdAction, Method, COUNT(IdStat) AS Total', $condition
            . ' GROUP BY IdAction, Method ORDER BY Total DESC', $params, MULTI);
        if (!is_null($result)) {
            foreach ($result as $resultData) {
                $regs[] = array('idaction' => $resultData['IdAction'], 'method' => $resultData['Method'],
                    'total' => $resultData['Total']);
            }
            return $regs;
        }
        return NULL;
    }

    /**
     * @param $userId
     * @param $command
     * @return integer
     */
    function getCountByUserAndAction($userId = NULL, $command = NULL)
    {
        if ($userId === null || $command === null)
        {
            return 0;
        }
        $condition = "IdUser = %s AND Method like %s";
        $params = array($userId, "%$command%");
        $result = $this->find('COUNT(IdStat) AS Total', $condition, $params, MULTI, true);
        if (!is_null($result)) {
            return $result[0]['Total'];
        }
        return 0;
    }

    /**
     * @param null $userId
     * @return array|null
     */
    function getAverage($userId = NULL)
    {
        $regs = array();
        if (!is_null($userId)) {
            $condition = "IdUser = %s";
            $params = array('IdUser' => $userId);
        } else {
            $condition = '1';
            $params = NULL;
        }
        $result = $this->find('IdAction, Method, SUM(Duration)/COUNT(IdStat) AS Average',
            $condition . ' GROUP BY IdAction, Method ORDER BY Average DESC', $params, MULTI);
        if (!is_null($result)) {
            foreach ($result as $resultData) {
                $regs[] = array('idaction' => $resultData['IdAction'], 'method' => $resultData['Method'],
                    'average' => $resultData['Average']);
            }
            return $regs;
        }
        return NULL;
    }
}