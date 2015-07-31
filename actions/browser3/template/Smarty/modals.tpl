<script type="text/ng-template" id="enterNameFilterModal.html">
    <div class="modal-header">
        <h3 class="modal-title">Enter a name</h3>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <input type="text" ng-model="name" class="form-control" placeholder="Write a name for the filter">
        </div>
    </div>
    <div class="modal-footer">
        <button class="btn btn-primary" ng-click="ok()">OK</button>
        <button class="btn btn-warning" ng-click="cancel()">Cancel</button>
    </div>
</script>

<script type="text/ng-template" id="advancedSearchModal.html">
    <div class="dialog_advanced_search advanced-search ui-dialog-content ui-widget-content">
        <div class="xim-search-dialog">
            <div class="xim-search-panel search_options">
                <div ng-if="results != null" class="buttonset save_search">
                    <button ng-click="saveQuery()">{t}Save{/t}</button>
                </div>
                <h2>{t}Advanced search{/t}</h2>

                <div class="filters">

                    <div id="search-filters" class="xim-search-filters" style="display: block;">
                        <div class="xim-search-filter" ng-repeat="filter in filters" >
                            <select class="xim-filter-field ui-widget select" ng-model="filter.field" >
                                <option value="name">Name</option>
                                <option value="path">Path</option>
                                <option value="content">Content</option>
                                <option value="nodetype">Nodetype</option>
                                <option value="creation">Creation date</option>
                                <option value="versioned">Version date</option>
                                <option value="publication">Publication date</option>
                                <option value="tag">Tag</option>
                                <option value="url">ximLINK Url</option>
                                <option value="desc">ximLINK Description</option>
                            </select>
                            <select ng-model="filter.comparation" ng-show="filter.field=='name' || filter.field=='path' ||
                        filter.field=='content' || filter.field=='tag' || filter.field=='url' ||
                        filter.field=='desc'" class="xim-filter-comparation xim-filter-active-comparation ui-widget select" style="display: inline-block;">
                                <option value="contains">contains</option>
                                <option value="nocontains">does not contain</option>
                                <option value="equal">equal to</option>
                                <option value="nonequal">not equal to</option>
                                <option value="startswith">begins with</option>
                                <option value="endswith">ends with</option>
                            </select>
                            <select ng-model="filter.nodetype_comparation" ng-show="filter.field=='nodetype'"
                                    class="xim-filter-nodetype-comparation xim-filter-active-comparation ui-widget select" style="display: inline-block;">
                                <option value="equal">is</option>
                            </select>
                            <select ng-model="filter.date_comparation" ng-show="filter.field=='creation' || filter.field=='versioned' ||
                        filter.field=='publication'" class="xim-filter-date-comparation xim-filter-active-comparation ui-widget select" style="display: inline-block;">
                                <option value="equal">equal to</option>
                                <option value="previousto">before than</option>
                                <option value="laterto">after than</option>
                                <option value="inrange">in the range</option>
                            </select>

                            <input ng-model="filter.content" type="text" ng-show="filter.field=='name' || filter.field=='path' ||
                        filter.field=='content' || filter.field=='tag' || filter.field=='url' ||
                        filter.field=='desc'" palceholder="{t}Search{/t}..." class="xim-filter-content"/>
                            <select ng-model="filter.nodetype_content" type="text"
                                    ng-show="filter.field=='nodetype'"
                                    class="xim-filter-nodetype-content ui-widget select">
                                <option value="5022">(5022) CommonRootFolder</option>
                                <option value="5028">(5028) CssFile</option>
                                <option value="5024">(5024) CssRootFolder</option>
                                <option value="5040">(5040) ImageFile</option>
                                <option value="5016">(5016) ImagesRootFolder</option>
                                <option value="5020">(5020) ImportRootFolder</option>
                                <option value="5050">(5050) LinkManager</option>
                                <option value="5084">(5084) MetaDataContainer</option>
                                <option value="5085">(5085) MetaDataDoc</option>
                                <option value="5083">(5083) MetaDataSection</option>
                                <option value="5080">(5080) ModulesFolder</option>
                                <option value="5013">(5013) Project</option>
                                <option value="5078">(5078) RngVisualTemplate</option>
                                <option value="5015">(5015) Section</option>
                                <option value="5014">(5014) Server</option>
                                <option value="5026">(5026) TemplatesRootFolder</option>
                                <option value="5053">(5053) TemplateViewFolder</option>
                                <option value="5054">(5054) XimletRootFolder</option>
                                <option value="5031">(5031) XmlContainer</option>
                                <option value="5032">(5032) XmlDocument</option>
                                <option value="5018">(5018) XmlRootFolder</option>
                                <option value="5077">(5077) XslTemplate</option>
                            </select>

                            <input ng-model="filter.date_content"
                                   datepicker type="text"
                                   ng-show="filter.field=='creation' || filter.field=='versioned' ||
                                        filter.field=='publication'"
                                   class="xim-filter-date-content xim-filter-active-content"
                                   style="display: inline-block;"/>
                            <input ng-model="filter.date_content_to"
                                   datepicker type="text"
                                   ng-show="(filter.field=='creation' || filter.field=='versioned' ||
                                filter.field=='publication') && filter.date_comparation == 'inrange'"
                                   class="xim-filter-date-to-content xim-filter-active-content"
                                   style="display: inline-block;"/>

                            <button ng-click="addFilter()" class="xim-filter-add">+</button>
                            <button ng-click="deleteFilter($index)" class="xim-filter-remove">-</button>
                        </div>
                    </div>
                    <div class="xim-search-options visible" ng-show="filters.length>1">
                        <span class="label">{t}Must be satisfied{/t}:</span>
                        <input  type="radio" name="sopt" ng-model="condition" value="and"/>
                        <label for="sopt-and">{t}All rules{/t}</label>
                        <input  type="radio" name="sopt" ng-model="condition" value="or"/>
                        <label for="sopt-or">{t}Any rules{/t}</label>
                    </div>

                    <div class="buttonset">
                        <button value="search" ng-click="search()" class="search_button">{t}Search{/t}</button>
                    </div>

                    <div class="xim-search-panel">
                        <div class="saved-searches">
                            <h3>{t}Saved searches{/t}</h3>

                            <div class="saved-searches-item-container">
                                <ul class="saved-searches-items">
                                    <li ng-click="search(s.filter)" ng-repeat="s in savedFilters">#/s.name/#</li>
                                </ul>
                            </div>
                        </div>
                        <div class="last-searches">
                            <h3>{t}Last searches{/t}</h3>

                            <div class="last-searches-item-container">
                                <ul class="last-searches-items">
                                    <li ng-click="search(s.query)" ng-repeat="s in lastSearches track by $index">#/s.title/#</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
            <div class="results">
                <div id="loading" class="loading-icon"></div>

                <h2>Results</h2>

                <div class="results-view xim-listview-container ui-droppable" style="opacity: 1;">
                    <div ng-if="results!=null"
                         class="xim-itemsSelector xim-listview-itemsSelector">
                        <span class="xim-itemsSelector-legend">Show</span>
                        <select ng-model="results.query.items" ng-change="updateView()">
                            <option class="xim-itemsSelector-option"
                                    name="listview_itemsSelector-item" value="3">3</option>
                            <option class="xim-itemsSelector-option"
                                    name="listview_itemsSelector-item" value="5">5</option>
                            <option class="xim-itemsSelector-option"
                                    name="listview_itemsSelector-item" value="10">10</option>
                            <option class="xim-itemsSelector-option"
                                    name="listview_itemsSelector-item" value="25">25</option>
                            <option class="xim-itemsSelector-option"
                                    name="listview_itemsSelector-item" value="50"
                                    selected="selected">50</option>
                            <option class="xim-itemsSelector-option"
                                    name="listview_itemsSelector-item"
                                    value="75">75</option>
                            <option class="xim-itemsSelector-option"
                                    name="listview_itemsSelector-item"
                                    value="100">100</option>
                        </select>
                    </div>
                    <div ng-if="results!=null" class="btn-group btn-group-sm" role="group" >
                        <button type="button" class="btn btn-default" ng-click="selectAll()">All</button>
                        <button type="button" class="btn btn-default" ng-click="selectNone()">None</button>
                        <button type="button" class="btn btn-default" ng-click="invertSelection()">Invert</button>
                    </div>
                    <div ng-if="results!=null" class="number_results">Results<span>#/results.records/#</span></div>
                    <div class="xim-listview-table-container">
                        <div style="width: 625px;">
                            <div class="t_fixed_header_main_wrapper ui-widget
                            ui-widget-header ui">
                                <div class="t_fixed_header_main_wrapper_child">
                                    <div class="t_fixed_header ui-state-default ui"
                                         style="border: none; font-weight: normal;">
                                        <div class="body ui-widget-content">
                                            <div>
                                                <table class="xim-listview-table">
                                                    <tbody>
                                                    <tr ng-repeat="result in results.data track by result.nodeid"
                                                        ng-click="selectNode(result, $event)"
                                                        ng-class="{literal}{'xim-listview-selected': isSelected(result)}{/literal}"
                                                        class="xim-listview-item"
                                                        ng-right-click="openMenu(result, $event)"    >
                                                        <td class="xim-listview-grid-view xim-listview-grid-icon ui-widget-content"
                                                            style="text-align: left;">
                                                            <span class="xim-listview-icon xim-listview-grid-icon icon-#/result.icon/#">

                                                            </span>
                                                            <span class="xim-actions-dropdown xim-listview-actions-dropdown
                                                            ui-icon ui-icon-triangle-1-e"></span>
                                                        </td>
                                                        <td class="xim-listview-grid-view ui-widget-content" tooltip="Node ID"
                                                            tooltip-append-to-body="true" style="text-align: center;">
                                                            <span>#/result.nodeid/#</span>
                                                        </td>
                                                        <td class="xim-listview-grid-view xim-listview-label ui-widget-content"
                                                            tooltip="#/result.name/#" style="text-align: left;"
                                                            tooltip-append-to-body="true">
                                                            <span>#/result.name/#</span>
                                                        </td>
                                                        <td class="xim-listview-grid-view ui-widget-content"
                                                            tooltip="Nodetype" style="text-align: left;"
                                                            tooltip-append-to-body="true">
                                                            <span>#/result.nodetype/#</span>
                                                        </td>
                                                        <td class="xim-listview-grid-view ui-widget-content"
                                                            tooltip="#/result.abspath.replace('/Ximdex', '')/#" style="text-align: left;"
                                                            tooltip-append-to-body="true">
                                                            <span>#/result.abspath.replace('/Ximdex', '')/#</span>
                                                        </td>
                                                        <td class="xim-listview-grid-view ui-widget-content"
                                                            tooltip="Last modified" style="text-align: center;"
                                                            tooltip-append-to-body="true">
                                                            <span>#/result.modificationformated/#</span>
                                                        </td>
                                                        <td class="xim-listview-grid-view ui-widget-content"
                                                            style="text-align: center;">
                                                            <span></span>
                                                        </td>
                                                        <td class="xim-listview-grid-view ui-widget-content"
                                                            style="text-align: center;">
                                                            <span></span>
                                                        </td>
                                                    </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div ng-if="results!=null" class="bs-pagination">
                        <pagination total-items="results.records" ng-model="results.query.page" max-size="5" class="pagination-sm"
                                    items-per-page="results.query.items"
                                    boundary-links="true" rotate="false" num-pages="results.pages" ng-change="updateView()"></pagination>
                    </div>
                    <!--<div class="buttonset">
                            <button class="createSetButton"  value="createSet" disabled>Create set</button>
                            <button value="addToSet">Add to set</button>

                        <button class="selectionButton" value="selectNodes">Select nodes</button>
                    </div>-->

                </div>

            </div>
        </div>
    </div>
</script>