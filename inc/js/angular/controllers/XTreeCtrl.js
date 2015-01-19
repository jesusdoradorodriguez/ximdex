// Generated by CoffeeScript 1.8.0

/**
\details &copy; 2011  Open Ximdex Evolution SL [http://www.ximdex.org]

Ximdex a Semantic Content Management System (CMS)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

See the Affero GNU General Public License for more details.
You should have received a copy of the Affero GNU General Public License
version 3 along with Ximdex (see LICENSE file).

If not, visit http://gnu.org/licenses/agpl-3.0.html.

@author Ximdex DevTeam <dev@ximdex.com>
@version $Revision$
 */
angular.module("ximdex.main.controller").controller("XTreeCtrl", [
  "$scope", "$attrs", "xBackend", "xTranslate", "$window", "$http", "xUrlHelper", "xMenu", "$document", "$timeout", "$q", "xTabs", "$sce", function($scope, $attrs, xBackend, xTranslate, $window, $http, xUrlHelper, xMenu, $document, $timeout, $q, xTabs, $sce) {
    var actualFilter, canceler, dragStartPosition, expanded, getFolderPath, listenHidePanel, loadAction, prepareBreadcrumbs, size;
    $scope.projects = null;
    $scope.initialNodeList = null;
    $scope.breadcrumbs = [];
    $scope.ccenter = null;
    $scope.modules = null;
    $scope.treeMode = true;
    $scope.nodeActions = [];
    $scope.selectedNodes = [];
    $scope.selectedTab = 1;
    $scope.filterMode = false;
    dragStartPosition = 0;
    expanded = true;
    size = 0;
    listenHidePanel = true;
    canceler = $q.defer();
    actualFilter = "";
    loadAction = function(action, nodes) {
      xTabs.pushTab(action, nodes);
    };
    $http.get(xUrlHelper.getAction({
      action: "browser3",
      method: "read",
      id: "10000"
    })).success(function(data) {
      if (data) {
        $scope.projects = data;
        $scope.projects.showNodes = true;
      }
    });
    $http.get(xUrlHelper.getAction({
      action: "browser3",
      method: "read",
      id: "2"
    })).success(function(data) {
      if (data) {
        $scope.ccenter = data;
      }
    });
    $http.get(xUrlHelper.getAction({
      action: "moduleslist",
      method: "readModules"
    })).success(function(data) {
      if (data) {
        $scope.modules = data;
      }
    });
    $scope.toggleNode = function(node, event) {
      event.preventDefault();
      node.showNodes = !node.showNodes;
      if (node.showNodes && !node.collection) {
        $scope.loadNodeChildren(node);
      }
    };
    $scope.loadNodeChildren = function(node, callback) {
      var fromTo, idToSend, maxItemsPerGroup, url;
      if (node.loading | node.isdir === "0") {
        if ($scope.treeMode === false) {
          $scope.initialNodeList = node;
          prepareBreadcrumbs();
        }
        return;
      }
      node.loading = true;
      node.showNodes = true;
      canceler.resolve();
      canceler = $q.defer();
      if ($scope.filterMode && $scope.selectedTab === 1) {
        node.collection = [];
        url = xUrlHelper.getAction({
          action: "browser3",
          method: "readFiltered",
          id: node.nodeid
        }) + "&query=" + actualFilter;
        $http.get(url, {
          timeout: canceler.promise
        }).success(function(data) {
          var cancel;
          node.loading = false;
          if (data) {
            node.collection = data.collection;
            if ($scope.treeMode === false && $scope.selectedTab === 1) {
              $scope.initialNodeList = node;
              prepareBreadcrumbs();
            }
            if (callback) {
              callback(node.collection);
            }
          }
          cancel = null;
        }).error(function(data) {
          var cancel;
          node.loading = false;
          cancel = null;
        });
      } else {
        maxItemsPerGroup = parseInt($window.com.ximdex.preferences.MaxItemsPerGroup);
        fromTo = "";
        idToSend = node.nodeid;
        if (node.nodeid === "0" && (node.startIndex != null) && (node.endIndex != null)) {
          fromTo = "&from=" + node.startIndex + "&to=" + node.endIndex;
          idToSend = node.parentid;
        }
        $http.get(xUrlHelper.getAction({
          action: "browser3",
          method: "read",
          id: idToSend
        }) + ("&items=" + maxItemsPerGroup) + fromTo, {
          timeout: canceler.promise
        }).success(function(data) {
          var cancel;
          node.loading = false;
          if (data) {
            node.collection = data.collection;
            if ($scope.treeMode === false && $scope.selectedTab === 1) {
              $scope.initialNodeList = node;
              prepareBreadcrumbs();
            }
            if (callback) {
              callback(node.collection);
            }
          }
          cancel = null;
        }).error(function(data) {
          var cancel;
          node.loading = false;
          cancel = null;
        });
      }
    };
    $scope.loadActions = function(node, event) {
      var data, n, nodeToSearch, _i, _len, _ref, _ref1;
      if (event.target.classList[0] === "xim-actions-dropdown" && event.type === "press") {
        return;
      }
      if ((_ref = event.srcEvent) != null) {
        _ref.stopPropagation();
      }
      if (typeof event.stopPropagation === "function") {
        event.stopPropagation();
      }
      $scope.select(node, event);
      if (($scope.selectedNodes[0].nodeid == null) | ($scope.selectedNodes[0].nodetypeid == null) | $scope.selectedNodes[0].nodeid === "0") {
        return;
      }
      nodeToSearch = $scope.selectedNodes[0].nodeid;
      if ($scope.selectedNodes.length > 1) {
        _ref1 = $scope.selectedNodes.slice(1);
        for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
          n = _ref1[_i];
          if ($scope.selectedNodes[0].nodetypeid !== n.nodetypeid) {
            return;
          } else {
            nodeToSearch += "-";
          }
        }
      }
      if ($scope.nodeActions[nodeToSearch] == null) {
        $http.get(xUrlHelper.getAction({
          action: "browser3",
          method: "cmenu",
          nodes: $scope.selectedNodes
        })).success(function(data) {
          if (data) {
            $scope.nodeActions[nodeToSearch] = data;
            if (event.pointers != null) {
              data.left = event.pointers[0].clientX + ($window.document.documentElement.scrollLeft ? $window.document.documentElement.scrollLeft : $window.document.body.scrollLeft);
              data.top = event.pointers[0].clientY + ($window.document.documentElement.scrollTop ? $window.document.documentElement.scrollTop : $window.document.body.scrollTop);
            }
            data.expanded = "true";
            if (event.clientX) {
              data.left = event.clientX + ($window.document.documentElement.scrollLeft ? $window.document.documentElement.scrollLeft : $window.document.body.scrollLeft);
              data.top = event.clientY + ($window.document.documentElement.scrollTop ? $window.document.documentElement.scrollTop : $window.document.body.scrollTop);
            }
            if (event.type === "tap") {
              data.expanded = "false";
            }
            xMenu.open(data, $scope.selectedNodes, loadAction);
          }
        });
      } else {
        data = $scope.nodeActions[nodeToSearch];
        if (event.pointers != null) {
          data.left = event.pointers[0].clientX + $window.document.body.scrollLeft;
          data.top = event.pointers[0].clientY + $window.document.body.scrollTop;
        }
        data.expanded = "true";
        if (event.clientX) {
          data.left = event.clientX + $window.document.body.scrollLeft;
          data.top = event.clientY + $window.document.body.scrollTop;
        }
        if (event.type === "tap") {
          data.expanded = "false";
        }
        xMenu.open(data, $scope.selectedNodes, loadAction);
      }
      return false;
    };
    $window.com.ximdex.emptyActionsCache = function() {
      $scope.nodeActions = [];
    };
    $scope.select = function(node, event) {
      var ctrl, k, n, pushed, _ref, _ref1;
      ctrl = event.srcEvent != null ? event.srcEvent.ctrlKey : event.ctrlKey;
      if (ctrl) {
        _ref = $scope.selectedNodes;
        for (k in _ref) {
          n = _ref[k];
          if (((n.nodeFrom == null) && (node.nodeFrom == null) && (n.nodeTo == null) && (node.nodeTo == null) && n.nodeid === node.nodeid) | ((n.nodeFrom != null) && (node.nodeFrom != null) && (n.nodeTo != null) && (node.nodeTo != null) && n.nodeFrom === node.nodeFrom && n.nodeTo === node.nodeTo)) {
            if (event.button === 0) {
              $scope.selectedNodes.splice(k, 1);
            }
            return;
          }
        }
        pushed = false;
        _ref1 = $scope.selectedNodes;
        for (k in _ref1) {
          n = _ref1[k];
          if (n.nodeid > node.nodeid) {
            $scope.selectedNodes.splice(k, 0, node);
            pushed = true;
            break;
          }
        }
        if (!pushed) {
          $scope.selectedNodes.splice($scope.selectedNodes.length, 0, node);
        }
      } else {
        $scope.selectedNodes = [node];
      }
    };
    $scope.reloadNode = function() {
      if ($scope.selectedNodes.length === 1) {
        if ($scope.selectedNodes[0].isdir === "0") {
          return;
        }
        $scope.selectedNodes[0].showNodes = true;
        $scope.selectedNodes[0].collection = [];
        return $scope.loadNodeChildren($scope.selectedNodes[0]);
      }
    };
    $scope.doFilter = function() {
      if ($scope.filter === "") {
        actualFilter = "";
        $scope.filterMode = false;
        $scope.projects.showNodes = true;
        $scope.projects.collection = [];
        $scope.loadNodeChildren($scope.projects);
      } else if ($scope.filter.length > 2 && $scope.filter.match(/^[\d\w_\.]+$/i)) {
        actualFilter = $scope.filter;
        $scope.filterMode = true;
        $scope.projects.showNodes = true;
        $scope.projects.collection = [];
        $scope.loadNodeChildren($scope.projects);
      }
      $scope.selectedNodes = [];
    };
    $scope.dragStart = function(event) {
      if (expanded) {
        return dragStartPosition = angular.element('#angular-tree').width();
      }
    };
    $scope.drag = function(e, width) {
      var x;
      if (expanded) {
        x = e.deltaX + dragStartPosition;
        if (x > $document.width() - 17) {
          x = $document.width() - 17;
        }
        if (x < 270) {
          x = 270;
        }
        angular.element(e.target).css({
          left: x + "px"
        });
        angular.element('#angular-tree').css({
          width: x + "px"
        });
        angular.element('#angular-content').css({
          left: (x + parseInt(width)) + "px"
        });
        return true;
      }
    };
    $scope.toggleTree = function(e) {
      angular.element(e.target).toggleClass("hide");
      angular.element(e.target).toggleClass("tie");
      angular.element('#angular-tree').toggleClass("hideable");
      angular.element('#angular-content').toggleClass("hideable");
      angular.element(e.target).toggleClass("hideable");
      expanded = !expanded;
      size = angular.element('#angular-tree').width();
      if (!expanded) {
        return $scope.hideTree();
      }
    };
    $scope.hideTree = function() {
      var a, b;
      if (!expanded && listenHidePanel) {
        a = 7;
        b = 10 + a;
        angular.element('#angular-tree').css({
          left: (-size - 7) + "px"
        });
        angular.element('#angular-content').css({
          left: (b - 7) + "px"
        });
        $timeout(function() {
          return listenHidePanel = false;
        }, 500);
      }
    };
    $scope.showTree = function() {
      if (!expanded && !listenHidePanel) {
        angular.element('#angular-tree').css({
          left: 0 + "px"
        });
        angular.element('#angular-content').css({
          left: (size + 10 + 7) + "px"
        });
        $timeout(function() {
          return listenHidePanel = true;
        }, 500);
      }
    };
    $scope.toggleView = function() {
      $scope.treeMode = !$scope.treeMode;
      if ($scope.treeMode === false && $scope.selectedTab === 1) {
        if ($scope.selectedNodes.length > 0) {
          $scope.loadNodeChildren($scope.selectedNodes[0]);
        } else {
          $scope.loadNodeChildren($scope.projects);
        }
      }
    };
    $scope.goBreadcrums = function(index) {
      var actualNode, i, n, nodeFound, pathToNode, _i, _len, _ref;
      pathToNode = $scope.breadcrumbs.slice(1, index + 1);
      actualNode = $scope.projects;
      nodeFound = false;
      while (pathToNode.length > 0) {
        nodeFound = false;
        _ref = actualNode.collection;
        for (i = _i = 0, _len = _ref.length; _i < _len; i = ++_i) {
          n = _ref[i];
          if ((n.name === pathToNode[0] && $scope.filterMode === false) | (n.originalName === pathToNode[0] && $scope.filterMode === true)) {
            actualNode = n;
            pathToNode.splice(0, 1);
            nodeFound = true;
            break;
          }
        }
        if (nodeFound === false) {
          return;
        }
      }
      $scope.loadNodeChildren(actualNode);
    };
    prepareBreadcrumbs = function() {
      var b, path;
      if ($scope.initialNodeList.nodeid === "0") {
        path = getFolderPath($scope.initialNodeList.collection[0].path);
      } else {
        path = $scope.initialNodeList.path;
      }
      if (path.slice(-1) === "/") {
        path = path.substring(0, path.length - 1);
      }
      if (path.slice(0, 1) === "/") {
        path = path.substring(1, path.length);
      }
      b = path.split("/");
      b.splice(0, 1);
      $scope.breadcrumbs = b;
      if ($scope.initialNodeList.isdir === "0") {
        $scope.goBreadcrums(b.length - 2);
      }
    };
    return getFolderPath = function(path) {
      var n;
      n = path.lastIndexOf("/");
      if (n > 0) {
        return path.substring(0, n);
      }
      return path;
    };
  }
]);

angular.module("ximdex.main.controller").filter("nodeSelected", function() {
  return function(input, arr) {
    var a, _i, _len;
    for (_i = 0, _len = arr.length; _i < _len; _i++) {
      a = arr[_i];
      if (((a.nodeFrom == null) && (a.nodeTo == null) && (input.nodeFrom == null) && (input.nodeTo == null) && a.nodeid === input.nodeid) | ((a.nodeFrom != null) && (a.nodeTo != null) && (input.nodeFrom != null) && (input.nodeTo != null) && a.nodeFrom === input.nodeFrom && a.nodeTo === input.nodeTo)) {
        return true;
      }
    }
    return false;
  };
});
