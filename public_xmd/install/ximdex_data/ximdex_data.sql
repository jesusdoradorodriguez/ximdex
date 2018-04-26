INSERT INTO `ProgrammingLanguage` (`id`, `description`) 
VALUES
    ('asp', 'Active Server Pages'),
    ('html5', 'Hypertext Markup Language (Version 5)'),
    ('json', 'Javascript Object Notation'),
    ('jsp', 'Javaserver Pages'),
    ('php', 'PHP Hypertext Preprocessor'),
    ('rdf', 'Resource Description Framework'),
    ('ror', 'Ruby on Rails'),
    ('sql', 'Structured Query Language'),
    ('xif', 'Ximdex Index Format'),
    ('xml', 'eXtensible Markup Language');

INSERT INTO `Nodes` (`IdNode`, `IdParent`, `IdNodeType`, `Name`, `IdState`, `BlockTime`, `BlockUser`, `CreationDate`, `ModificationDate`
    , `Description`, `SharedWorkflow`, `Path`, `sortorder`, `deleted`) 
    VALUES ('10010', '9', '5033', 'JSON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '/Ximdex/Control center/Channel manager', '0', '0');

INSERT INTO `Channels` (`IdChannel`, `Name`, `Description`, `DefaultExtension`, `Format`, `Filter`, `RenderMode`, `OutputType`, `Default_Channel`
    , `idLanguage`, `RenderType`)
    VALUES ('10010', 'JSON', 'Javascript Object Notation', 'json', NULL, NULL, NULL, 'other', '0', 'json', 'static');

INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`)
VALUES
    (6000,0,'Node information','infonode','add_user.png','Shows node info',1,NULL,0,'',0),
    (6043,5018,'Add XML or HTML documents','fileupload_common_multiple','add_xml.png','Create new XML and HTML documents in several languages',9,NULL,0,'',0),
    (6044,5018,'Add new XML document','createxmlcontainer','add_xml.png','Create a new XML or HTML document in several languages',10,NULL,0,'',0),
    (6071,5050,'Add new external link','createlink','add_external_link.png','Create a new external link',10,NULL,0,'',0),
    (6072,5048,'Add new external link','createlink','add_external_link.png','Create a new external link',10,NULL,0,'',0),
    (6138,5054,'Add new ximlet','createxmlcontainer','add_xml.png','Create a new document structured in several languages',10,NULL,0,'',0),
    (6140,5055,'Add new ximlet','createxmlcontainer','add_xml.png','Create a new document structured in several languages',10,NULL,0,'',0),
    (6151,5056,'Add new language','addlangxmlcontainer','add_language_xml.png','Add a new language to ximlet',10,NULL,0,'',0),
    (6047,5030,'Add new language','createlanguage','add_language.png','Add a new language',10,NULL,0,'',0),
    (6048,5029,'Add new channel','createchannel','add_channel.png','Add a new channel to Ximdex',10,NULL,0,'',0),
    (6011,5012,'Add new XCMS project','addfoldernode','create_proyect.png','Create a new node with project type',11,NULL,0,'',0),
    (6012,5013,'Add new server','addfoldernode','create_server.png','Create a new server',11,NULL,0,'',0),
    (6013,5014,'Add new section','addsectionnode','add_section.png','Create a new section',11,NULL,0,'',0),
    (6014,5015,'Add new section','addsectionnode','add_section.png','Create a new section',11,NULL,0,'',0),
    (6015,5016,'Add new image folder','addfoldernode','add_folder_images.png','Create a new image folder',11,NULL,0,'',0),
    (6016,5017,'Add new image folder','addfoldernode','add_folder_images.png','Create a new image folder',11,NULL,0,'',0),
    (6018,5020,'Add ximclude folder','addfoldernode','add_import.png','Create a new import folder',11,NULL,0,'',0),
    (6019,5021,'Add ximclude folder','addfoldernode','add_import.png','Create a nex import folder',11,NULL,0,'',0),
    (6020,5022,'Add common folder','addfoldernode','add_folder_common.png','Create a new common folder',11,NULL,0,'',0),
    (6021,5023,'Add common folder','addfoldernode','add_folder_common.png','Create a new common folder',11,NULL,0,'',0),
    (6022,5024,'Add CSS folder','addfoldernode','add_folder_css.png','Create a new CSS folder',11,NULL,0,'',0),
    (6023,5025,'Add CSS folder','addfoldernode','add_folder_css.png','Create a new CSS folder',11,NULL,0,'',0),
    (6069,5050,'Add new link subfolder','addfoldernode','add_links_category.png','Create a new link subfolder',11,NULL,0,'',0),
    (6070,5048,'Add new link subfolder','addfoldernode','add_links_category.png','Create a new link subfolder',11,NULL,0,'',0),
    (6137,5054,'Add new ximlet folder','addfoldernode','add_folder_ximlet.png','Create a new ximlet folder',11,NULL,0,'',0),
    (6139,5055,'Add new ximlet folder','addfoldernode','add_folder_ximlet.png','Create a new ximlet folder',11,NULL,0,'',0),
    (6001,5003,'Add new user','createuser','add_user.png','Create a new Ximdex user',10,NULL,0,'',0),
    (6006,5004,'Add new group','creategroup','add_group.png','Create a new group',10,NULL,0,'',0),
    (6009,5006,'Add node type','createnodetype','create_type_node.png','Add a node type',-10,NULL,0,'',0),
    (6010,5005,'Add new role','createrole','create_rol.png','Create a new role',10,NULL,0,'',0),
    (6045,5031,'Add new language','addlangxmlcontainer','add_language_xml.png','Add a document with a different language',10,NULL,0,'',0),
    (6046,5079,'Manage workflow','modifystates','manage_states.png','Add a new status to the workflow',10,NULL,0,'',0),
    (6206,5083,'Add new metadata file','createxmlcontainer','add_xml.png','Create a new metadata document',10,NULL,0,'',0),
    (6343,5016,'Add images','fileupload_common_multiple','upload_image.png','Add an image set to the server',10,NULL,0,'type=image',0),
    (6344,5017,'Add images','fileupload_common_multiple','upload_image.png','Add an image set to the server',10,NULL,0,'type=image',0),
    (6345,5026,'Add templates','fileupload_common_multiple','add_template_ptd.png','Add a set of templates to the server',9,NULL,0,'type=ptd',0),
    (6346,5022,'Add files','fileupload_common_multiple','add_file_common.png','Add a set of files to the server',10,NULL,0,'type=common',0),
    (6347,5023,'Add files','fileupload_common_multiple','add_file_common.png','Add a set of files to the server',10,NULL,0,'type=common',0),
    (6348,5024,'Add style sheets','fileupload_common_multiple','add_file_css.png','Add a set of style sheets to the server',10,NULL,0,'type=css',0),
    (6349,5025,'Add style sheets','fileupload_common_multiple','add_file_css.png','Add a set of style sheets to the server',10,NULL,0,'type=css',0),
    (6236,5020,'Add files','fileupload_common_multiple','add_nodes_ht.png','Add multiple files',10,NULL,0,'',0),
    (7301,5035,'Add workflow','addworkflow','xix.png','Add a new workflow',-10,NULL,0,NULL,0),
    (8115,5053,'Add schemes','fileupload_common_multiple','add_template_pvd.png','Add a set of schemes to the server',9,NULL,0,'type=pvd',0),
    (8122,5022,'Add empty file','newemptynode','add_file_common.png','Create a new empty file',9,NULL,0,'',0),
    (8123,5023,'Add empty file','newemptynode','add_file_common.png','Create a new empty file',9,NULL,0,'',0),
    (8124,5024,'Add empty stylesheet','newemptynode','add_file_common.png','Create a new empty file',9,NULL,0,'',0),
    (8125,5025,'Add empty stylesheet','newemptynode','add_file_common.png','Create a new empty file',9,NULL,0,'',0),
    (8126,5026,'Add empty XSL template','newemptynode','add_file_common.png','Create a new empty file',9,NULL,0,'',0),
    (8127,5053,'Add an empty RNG schema','newemptynode','add_file_common.png','Create a new empty file',9,NULL,0,'',0),
    (8128,5020,'Add empty file','newemptynode','add_file_common.png','Create a new empty file',9,NULL,0,'',0),
    (8129,5021,'Add empty file','newemptynode','add_file_common.png','Create a new empty file',9,NULL,0,'',0),
    (6136,5032,'Edit in text mode','edittext','edit_file_xml_txt.png','Edit content of structured document in plain text',21,NULL,0,'',0),
    (6065,5032,'Edit XML document','xmleditor2','edit_file_xml.png','Edit content of XML document',20,NULL,0,'',0),
    (6094,5039,'Edit file','edittext','edit_file_txt.png','Edit content of text document',20,NULL,0,'',0),
    (6105,5028,'Edit','edittext','edit_file_css.png','Edit content of text document',20,NULL,0,'',0),
    (6154,5057,'Edit ximlet','xmleditor2','edit_file_xml.png','Modify content of a ximlet',20,NULL,0,'',0),
    (6157,5057,'Edit in text mode','edittext','edit_file_xml_txt.png','Edit ximlet with text mode',21,NULL,0,'',0),
    (6209,5085,'Edit metadata in text mode','edittext','edit_file_xml_txt.png','Edit metadata content in text plain mode',21,NULL,0,'',0),
    (6210,5085,'Edit metadata in XML','xmleditor2','edit_file_xml.png','Edit metadata content in Xedit',20,NULL,0,'',0),
    (6227,5076,'Edit in text mode','edittext','edit_html_txt_file.png','Edit content of text document',21,NULL,0,'',0),
    (6229,5076,'Edit HTML','htmleditor','edit_html_file.png','Edita el documento html',21,NULL,0,'',0),
    (7304,5321,'Edit RNG','edittext','edit_template_view.png','Edit RNG schema',20,NULL,0,NULL,0),
    (7306,5077,'Edit XSL template','edittext','edit_template_ptd.png','Edit a XSL template',20,NULL,0,NULL,0),
    (7319,5078,'Edit RNG schema','edittext','edit_template_view.png','Edit a RNG schema',20,NULL,0,NULL,0),
    (8132,5031,'Edit metadata','managemetadata','xix.png','Edit the metadata info',-20,NULL,0,NULL,0),
    (8133,5040,'Edit metadata','managemetadata','xix.png','Edit the metadata info',-20,NULL,0,NULL,0),
    (8134,5039,'Edit metadata','managemetadata','xix.png','Edit the metadata info',-20,NULL,0,NULL,0),
    (8135,5041,'Edit metadata','managemetadata','xix.png','Edit the metadata info',-20,NULL,0,NULL,0),
    (6073,5049,'Modify external link','modifylink','modify_link.png','Modify properties of external link',20,NULL,0,'',0),
    (6600,5013,'Copy','copy','Copy_proyecto.png','Copy a complete project',-30,NULL,0,'',0),
    (6601,5050,'Copy','copyNode','copiar_documento.png','Copy a link',-30,'ximIO',0,'',0),
    (6602,5048,'Copy','copyNode','copiar_seccion.png','Copy a link folder',-30,'ximIO',0,'',0),
    (6604,5023,'Copy','copyNode','copiar_carpeta_common.png','Copy a common subfolder',-30,'ximIO',0,'',0),
    (6606,5025,'Copy','copyNode','copiar_seccion.png','Copy a CSS subfolder',-30,'ximIO',0,'',0),
    (6608,5017,'Copy','copyNode','copiar_carpeta_images.png','Copy a image subfolder',-30,'ximIO',0,'',0),
    (6610,5021,'Copy','copyNode','copiar_carpeta_ximclude.png','Copy a ximclude subfolder ',-30,'ximIO',0,'',0),
    (6612,5031,'Copy','copyNode','copiar_carpeta_ximdoc.png','Copy a XML document',-30,'ximIO',0,'',0),
    (6614,5055,'Copy','copyNode','copiar_carpeta_ximlet.png','Copy a ximlet subfolder',-30,'ximIO',0,'',0),
    (6615,5056,'Copy','copyNode','copiar_carpeta_ximlet.png','Copy a ximlet document',-30,'ximIO',0,'',0),
    (6616,5049,'Copy','copyNode','copiar_documento.png','Copy a link',-30,'ximIO',0,'',0),
    (6617,5057,'Copy','copyNode','copiar_documento.png','Copy a ximlet',-30,'ximIO',0,'',0),
    (6619,5014,'Copy','copyNode','copiar_servidor.png','Copy a complete server',-30,'ximIO',0,'',0),
    (6620,5015,'Copy','copyNode','copiar_seccion.png','Copy a complete section',-30,'ximIO',0,'',0),
    (6621,5053,'Copy','copyNode','copiar_seccion.png','Copy a complete schema',-30,'ximIO',0,'',0),
    (6622,5026,'Copy','copyNode','copiar_carpeta_ximptd.png','Copy a complete template',-30,'ximIO',0,'',0),
    (6629,5028,'Copy','copyNode','copiar_documento.png','Copy a style sheet',-30,'ximIO',0,'',0),
    (6626,5039,'Copy','copyNode','copiar_documento.png','Copy a text file',-30,'ximIO',0,'',0),
    (6627,5040,'Copy','copyNode','copiar_documento.png','Copy a image file',-30,'ximIO',0,'',0),
    (6628,5041,'Copy','copyNode','copiar_documento.png','Copy a binary file',-30,'ximIO',0,'',0),
    (7200,5040,'Copy','copy','copiar_documento.png','Copy a image to another destination',30,NULL,0,'',0),
    (7201,5017,'Copy','copy','copiar_carpeta_images.png','Copy a image subfolder to another destination',31,NULL,0,'',0),
    (7203,5014,'Copy','copy','copiar_servidor.png','Copy a server to another destination',30,NULL,0,'',0),
    (7206,5021,'Copy','copy','copiar_carpeta_ximclude.png','Copy a ximclude subfolder to another destination',31,NULL,0,'',0),
    (7208,5023,'Copy','copy','copiar_carpeta_common.png','Copia a common subfolder to another destination',31,NULL,0,'',0),
    (7210,5025,'Copy','copy','copiar_seccion.png','Copy a CSS subfolder to another destination',31,NULL,0,'',0),
    (7211,5026,'Copy','copy','copiar_carpeta_ximptd.png','Copy a templates folder to another destination',31,NULL,0,'',0),
    (7212,5028,'Copy','copy','copiar_documento.png','Copy a CSS document to another destination',30,NULL,0,'',0),
    (7213,5031,'Copy','copy','copiar_carpeta_ximdoc.png','Copy a document to another destination',30,NULL,0,'',0),
    (7215,5039,'Copy','copy','copiar_documento.png','Copy a text document to another destination',30,NULL,0,'',0),
    (7216,5041,'Copy','copy','copiar_documento.png','Copy a binary document to another destination',30,NULL,0,'',0),
    (7217,5048,'Copy','copy','copiar_carpeta_ximlink.png','Copy a link subfolder to another destination',31,NULL,0,'',0),
    (7218,5049,'Copy','copy','copiar_documento.png','Copy a link to another destination',30,NULL,0,'',0),
    (7219,5050,'Copy','copy','copiar_carpeta_ximlink.png','Copy a links folder to another destination',31,NULL,0,'',0),
    (7221,5055,'Copy','copy','copiar_carpeta_ximlet.png','Copy a ximlet subfolder to another destination',31,NULL,0,'',0),
    (7222,5056,'Copy','copy','copiar_carpeta_ximdoc.png','Copy a ximlet document to another destination',30,NULL,0,'',0),
    (7223,5057,'Copy','copy','copiar_carpeta_ximlet.png','Copy a ximlet document to another destination',30,NULL,0,'',0),
    (7224,5076,'Copy','copy','copiar_documento.png','Copy a HTML document to another destination',30,NULL,0,'',0),
    (7225,5015,'Copy','copy','copiar_seccion.png','Copy a section to another destination',30,NULL,0,'',0),
    (7226,5053,'Copy','copy','copiar_carpeta_ximdoc.png','Copy a schemes folder to another destination',31,NULL,0,'',0),
    (6170,5014,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'',0),
    (6171,5015,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'',0),
    (6172,5017,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'',0),
    (6173,5021,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'',0),
    (6174,5023,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'',0),
    (6175,5028,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'',0),
    (6176,5031,'Move node','movenode','move_node.png','Move a node',35,NULL,0,'',0),
    (6177,5039,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'',0),
    (6178,5040,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'',0),
    (6179,5041,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'',0),
    (6181,5048,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'',0),
    (6182,5049,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'',0),
    (6183,5056,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'',0),
    (6233,5076,'Move file','movenode','move_node.png','Move a node',40,NULL,0,'',0),
    (8120,5077,'Move node','movenode','move_node.png','Move a node',40,NULL,1,'',0),
    (6002,5009,'Modify user data','modifyuser','modify_user.png','Change user data',60,NULL,0,'',0),
    (6005,5010,'Modify role','modifyrole','modify_rol.png','Manage role attributions',60,NULL,0,'',0),
    (6008,5007,'Modify node type','modifynodetype','modify_nodetype.png','Modify a node type',-60,NULL,0,'',0),
    (6081,5010,'Modify associated workflow status','modifystatesrole','modify_state_workflow-rol.png','Modify associated status with this role',60,NULL,0,'',0),
    (6082,5036,'Modify associated roles','modifyrolesstate','manage_states-rol.png','Modify associated roles with this status',60,NULL,0,'',0),
    (6095,5033,'Channel properties','modifychannel','properties_channel.png','Modify channel properties',60,NULL,0,'',0),
    (6096,5011,'Group properties','modifygroup','properties_group.png','Modify group properties',60,NULL,0,'',0),
    (6097,5034,'Modify language','modifylanguage','modify_language.png','Modify data of a language',60,NULL,0,'',0),
    (6101,5011,'Change users','modifygroupusers','modify_users.png','Modify list of users that integrate this group',60,NULL,0,'',0),
    (6125,5014,'Manage servers','modifyserver','modify_sinc_data.png','Modify data connection with the production environment',60,NULL,0,'',0),
    (7307,5013,'Modify properties','manageproperties','xix.png','Modify properties of a project',60,NULL,0,NULL,0),
    (7308,5014,'Modify properties','manageproperties','xix.png','Modify properties of a server',60,NULL,0,NULL,0),
    (7309,5015,'Modify properties','manageproperties','xix.png','Modify properties of a section',60,NULL,0,NULL,0),
    (7310,5018,'Modify properties','manageproperties','xix.png','Modify properties of a document folder',27,NULL,0,NULL,0),
    (7311,5031,'Modify properties','manageproperties','xix.png','Modify properties',27,NULL,0,NULL,0),
    (7321,5078,'Modify properties','renamenode','modiy_templateview','Modify properties of a RNG schema',60,NULL,0,NULL,0),
    (6004,5009,'Manage groups','modifyusergroups','manage_user_groups.png','Enroll, disenroll, and change user role in groups where he/she belongs to',60,NULL,0,'',0),
    (6007,5015,'Configure section','managefolders','change_name_section.png','Configure the folders of a section',61,NULL,0,'',0),
    (6025,5015,'Change section name','renamenode','change_name_section.png','Change a section name',60,NULL,0,'',0),
    (6026,5013,'Change project name','renamenode','change_name_proyect.png','Change a project name',60,NULL,0,'',0),
    (6027,5014,'Change server name','renamenode','change_name_server.png','Change a server name',60,NULL,0,'',0),
    (6028,5017,'Change name','renamenode','change_name_folder_images.png','Change name of selected folder',61,NULL,0,'',0),
    (6030,5021,'Change name','renamenode','change_name_folder_import.png','Change name of selected folder',61,NULL,0,'',0),
    (6031,5023,'Change name','renamenode','change_name_folder_common.png','Change name of selected folder',61,NULL,0,'',0),
    (6032,5025,'Change name','renamenode','change_name_folder_css.png','Change folder name',61,NULL,0,'',0),
    (6123,5014,'Associated groups','modifygroupsnode','groups_server.png','Manage associations of groups with this node',60,NULL,0,'',0),
    (6064,5031,'Change name of XML document','renamenode','change_name_xml.png','Change the document name and all its language versions',25,NULL,0,'',0),
    (6074,5015,'Associated groups','modifygroupsnode','groups_section.png','Manage associations of groups with this node',60,NULL,0,'',0),
    (6103,5028,'Change name','renamenode','change_name_file_css.png','Change file name on import folder',61,NULL,0,'',0),
    (6083,5041,'Change name','renamenode','change_name_file_txt_bin.png','Change name of selected file',60,NULL,0,'',0),
    (6085,5040,'Change image name','renamenode','change_name_image.png','Change file name',60,NULL,0,'',0),
    (6087,5039,'Change name','renamenode','change_name_file_txt_bin.png','Change file name on import folder',61,NULL,0,'',0),
    (6122,5013,'Associated groups','modifygroupsnode','groups_project.png','Manage associations of groups with this node',60,NULL,0,'',0),
    (6118,5048,'Change name','renamenode','modify_link_folder.png','Change name of selected folder',61,NULL,0,'',0),
    (6142,5055,'Change name','renamenode','change_name_folder_ximlet.png','Change folder name',61,NULL,0,'',0),
    (6153,5056,'Change ximlet name','renamenode','change_name_xml.png','Change ximlet name',60,NULL,0,'',0),
    (6208,5084,'Change name','renamenode','change_name_xml.png','Change the metadatas name and all its language versions',60,NULL,0,'',0),
    (6230,5076,'Change name','renamenode','change_name_html_file.png','Change name of selected file',60,NULL,0,'',0),
    (7236,5057,'Manage associations','showassocnodes','xix.png','Manage node associations with ximlet',-60,NULL,0,NULL,0),
    (7229,5048,'Check links','linkreport','xix.png','Check broken links',60,NULL,0,NULL,0),
    (7230,5049,'Check links','linkreport','xix.png','Check broken links',-60,NULL,0,NULL,0),
    (7231,5050,'Check links','linkreport','xix.png','Check broken links',60,NULL,0,NULL,0),
    (8117,5077,'Change name','renamenode','modify_template_ptd.png','Change template name',60,NULL,0,'',0),
    (8136,5082,'Set allowed extensions','setextensions','modify_users.png','Set allowed extensions',60,NULL,0,NULL,0),
    (8137,5081,'Manage module','moduleslist','xix.png','Manage module',60,NULL,0,NULL,0),
    (6184,5015,'Associate a ximlet with a section','addximlet','asociate_ximlet_folder.png','Associate a ximlet with a section',62,NULL,1,'',0),
    (6202,5014,'Associate ximlet with server','addximlet','asociate_ximlet_server.png','Associate a ximlet with a server',62,NULL,1,'',0),
    (6098,5032,'Publish','workflow_forward','change_next_state.png','Move to the next state',72,NULL,0,'',0),
    (6099,5032,'Move to previous state','workflow_backward','change_last_state.png','Move to the previous state',-73,NULL,0,'',0),
    (6126,5039,'Publish','workflow_forward','change_next_state.png','Move a text document to the next state',70,NULL,0,'',0),
    (6127,5039,'Move to previous state','workflow_backward','change_last_state.png','Move a text document to the previous state',-70,NULL,0,'',0),
    (6128,5041,'Publish','workflow_forward','change_next_state.png','Move a text document to the next state',70,NULL,0,'',0),
    (6129,5041,'Move to previous state','workflow_backward','change_last_state.png','Move a text document to the previous state',-70,NULL,0,'',0),
    (6130,5040,'Publish','workflow_forward','change_next_state.png','Move a text document to the next state',70,NULL,0,'',0),
    (6131,5040,'Move to previous state','workflow_backward','change_last_state.png','Move a text document to the previous state',-70,NULL,0,'',0),
    (6132,5028,'Publish','workflow_forward','change_next_state.png','Move a text document to the next state',70,NULL,0,'',0),
    (6133,5028,'Move to previous state','workflow_backward','change_last_state.png','Move a text document to the previous state',-70,NULL,0,'',0),
    (6204,5015,'Publish section','publicatesection','publicate_section.png','Publish a section massively',70,NULL,1,'',0),
    (7016,5057,'Publish ximlet','publicateximlet','xix.png','Publish documents associated with a ximlet',70,NULL,0,'',0),
    (8101,5016,'Publish section','publicatesection','publicate_section.png','Publish a section massively',70,NULL,1,'',0),
    (8102,5017,'Publish section','publicatesection','publicate_section.png','Publish a section massively',70,NULL,1,'',0),
    (8103,5024,'Publish section','publicatesection','publicate_section.png','Publish a section massively',70,NULL,1,'',0),
    (8104,5025,'Publish section','publicatesection','publicate_section.png','Publish a section massively',70,NULL,1,'',0),
    (8105,5022,'Publish section','publicatesection','publicate_section.png','Publish a section massively',70,NULL,1,'',0),
    (8106,5023,'Publish section','publicatesection','publicate_section.png','Publish a section massively',70,NULL,1,'',0),
    (9500,5032,'Expire document','expiredoc','expire_section.png','Expire a document',76,NULL,0,'',0),
    (6144,5040,'Version manager','manageversions','manage_versions.png','Manage version repository',73,NULL,0,'',0),
    (6145,5041,'Version manager','manageversions','manage_versions.png','Manage repository of versions',73,NULL,0,'',0),
    (6146,5028,'Version manager','manageversions','manage_versions.png','Manage repository of versions',73,NULL,0,'',0),
    (6148,5039,'Version manager','manageversions','manage_versions.png','Manage repository of versions',73,NULL,0,'',0),
    (6150,5057,'Version manager','manageversions','manage_versions.png','Manage repository of versions',73,NULL,0,'',0),
    (6143,5032,'Version manager','manageversions','manage_versions.png','Manage repository of versions',82,NULL,0,'',0),
    (6231,5076,'Version manager','manageversions','manage_html_versions.png','Manage repository of versions',73,NULL,0,'',0),
    (8119,5077,'Version manager','manageversions','manage_versions.png','Manage repository of versions',73,NULL,0,'',0),
    (6135,5032,'Symbolic link','xmlsetlink','file_xml_symbolic.png','Modify document which borrows the content',-74,NULL,0,'',0),
    (6156,5057,'Symbolic link','xmlsetlink','file_xml_symbolic.png','Modify the ximlet which borrows the content',74,NULL,0,'',0),
    (6003,5009,'Remove user','deleteuser','delete_user.png','Remove an user from system',75,NULL,0,'',0),
    (6034,5013,'Delete project','deletenode','delete_proyect.png','Delete a project',75,NULL,1,'',0),
    (6035,5014,'Delete server','deletenode','delete_server.png','Delete a server',75,NULL,1,'',0),
    (6036,5015,'Delete section','deletenode','delete_section.png','Delete a section',75,NULL,1,'',0),
    (6037,5017,'Delete folder','deletenode','delete_folder_images.png','Delete selected folder',76,NULL,1,'',0),
    (6039,5021,'Delete folder','deletenode','delete_folder_import.png','Delete selected folder',76,NULL,1,'',0),
    (6040,5023,'Delete folder','deletenode','delete_folder_common.png','Delete selected folder',76,NULL,1,'',0),
    (6041,5025,'Delete folder','deletenode','delete_folder_css.png','Delete selected folder',76,NULL,1,'',0),
    (6108,5011,'Delete group','deletenode','delete_group.png','Delete select group',75,NULL,1,'',0),
    (6063,5031,'Delete document','deletenode','delete_xml.png','Delete XML document in all its languages',90,NULL,1,'',0),
    (6067,5008,'Delete action','deletenode','delete.png','Delete the action',75,NULL,1,'',0),
    (6084,5041,'Delete file','deletenode','delete_file_txt_bin.png','Delete selected file',75,NULL,1,'',0),
    (6086,5040,'Delete image','deletenode','delete_image.png','Delete an image',75,NULL,1,'',0),
    (6088,5039,'Delete','deletenode','delete_file_txt_bin.png','Delete file of import folder',76,NULL,1,'',0),
    (6107,5033,'Delete channel','deletenode','delete_channel.png','Delete a channel if it has not associated documents',75,NULL,1,'',0),
    (6102,5034,'Delete','deletenode','delete_language.png','Delete a language from the system',75,NULL,1,'',0),
    (6106,5028,'Delete','deletenode','delete_file_css.png','Delete file of import folder',76,NULL,1,'',0),
    (6109,5010,'Delete role','deletenode','delete_role.png','Delete a selected role if it is not in use',75,NULL,1,'',0),
    (6121,5036,'Delete','deletenode','delete_state.png','Delete a state if it is not an initial or final one and it is not in use',75,NULL,1,'',0),
    (6119,5048,'Delete folder','deletenode','delete_link_folder.png','Delete selected folder',76,NULL,1,'',0),
    (6120,5049,'Delete link','deletenode','delete_link.png','Delete selected link',75,NULL,1,'',0),
    (6134,5032,'Delete document','deletenode','delete_file_xml.png','Delete selected XML document',90,NULL,1,'',0),
    (6141,5055,'Delete folder','deletenode','delete_folder_ximlet.png','Delete selected folder',76,NULL,1,'',0),
    (6152,5056,'Delete ximlet','deletenode','delete_xml.png','Delete a ximlet permanently from system',75,NULL,1,'',0),
    (6155,5057,'Delete document','deletenode','delete_file_xml.png','Delete a ximlet and all its dependencies',75,NULL,1,'',0),
    (6207,5084,'Delete metadata document','deletenode','delete_xml.png','Delete metadata document in all its languages',75,NULL,1,'',0),
    (6232,5076,'Delete file','deletenode','delete_html_file.png','Delete HTML file',75,NULL,1,'',0),
    (7305,5077,'Delete XSL template','deletenode','delete_template_ptd.png','Delete a XSL template',75,NULL,0,NULL,0),
    (7318,5078,'Delete RNG schema','deletenode','delete_template_view.png','Delete a RNG schema',75,NULL,0,NULL,0),
    (8121,5026,'Delete templates','deletetemplates','delete_template_ptd.png','Delete selected templates',75,NULL,0,'',0),
    (6049,5041,'Download file','filedownload','download_file_txt_bin.png','Download selected file',80,NULL,0,'',0),
    (6050,5040,'Download image','filedownload','download_image.png','Download an image to a local hard disk',80,NULL,0,'',0),
    (6051,5039,'Download file','filedownload','download_file_txt_bin.png','Download a file to a local hard disk',80,NULL,0,'',0),
    (6052,5040,'Image preview','filepreview','view_image.png','Preview an image',80,NULL,0,'',0),
    (6104,5028,'Download file','filedownload','download_file_css.png','Download a file to a local hard disk',80,NULL,0,'',0),
    (6228,5076,'Download file','filedownload','download_html_file.png','Download selected file',80,NULL,0,'',0),
    (6205,5015,'Expire section','expiresection','expire_section.png','Expire a section',80,NULL,0,'',0),
    (7239,0,'Action report','actionsstats','xix.png','Show action report',80,NULL,0,NULL,0),
    (8107,5016,'Download all images','filedownload_multiple','download_image.png','Download all images',80,NULL,0,'',1),
    (8108,5017,'Download all images','filedownload_multiple','download_image.png','Download all images',80,NULL,0,'',1),
    (8109,5024,'Download all style sheets','filedownload_multiple','download_file_css.png','Download all style sheets',80,NULL,0,'',1),
    (8110,5025,'Download all style sheets','filedownload_multiple','download_file_css.png','Download all style sheets',80,NULL,0,'',1),
    (8111,5026,'Download all templates','filedownload_multiple','download_template_ptd.png','Download all templates',80,NULL,0,'',1),
    (8112,5053,'Download all templates','filedownload_multiple','download_template_view.png','Download all templates',80,NULL,0,'',1),
    (8113,5022,'Download all files','filedownload_multiple','download_html_file.png','Download all files',80,NULL,0,'',1),
    (8114,5023,'Download all files','filedownload_multiple','download_html_file.png','Download all files',80,NULL,0,'',1),
    (8118,5077,'Download template','filedownload','download_template_ptd.png','Download a template',80,NULL,0,'',0),
    (6147,5016,'Image viewer','filepreview','view_image.png','Preview the images',80,NULL,0,'method=showAll',0),
    (6149,5017,'Image viewer','filepreview','view_image.png','Preview the images',80,NULL,0,'method=showAll',0),
    (6385,5032,'Preview','preview','xix.png','Preview of the document',65,NULL,0,'',0),
    (8116,5014,'Status Report','checkstatus','manage_versions.png','Status Report to inform the user',95,NULL,0,NULL,0),
    (6500,5012,'Export','serializeNodeXML','xix.png','Export all projects',-91,'ximIO',0,'',0),
    (6501,5013,'Export','serializeNodeXML','xix.png','Export a complete project',-91,'ximIO',0,'',0),
    (6502,5050,'Export','serializeNodeXML','xix.png','Export a link',-91,'ximIO',0,'',0),
    (6503,5048,'Export','serializeNodeXML','xix.png','Export a link folder',-91,'ximIO',0,'',0),
    (6504,5022,'Export','serializeNodeXML','xix.png','Export a complete common folder',-91,'ximIO',0,'',0),
    (6505,5023,'Export','serializeNodeXML','xix.png','Export a common subfolder',-91,'ximIO',0,'',0),
    (6506,5024,'Export','serializeNodeXML','xix.png','Export a complete CSS folder',-91,'ximIO',0,'',0),
    (6507,5025,'Export','serializeNodeXML','xix.png','Export a CSS subfolder',-91,'ximIO',0,'',0),
    (6508,5016,'Export','serializeNodeXML','xix.png','Export a complete image folder',-91,'ximIO',0,'',0),
    (6509,5017,'Export','serializeNodeXML','xix.png','Export a image subfolder',-91,'ximIO',0,'',0),
    (6510,5020,'Export','serializeNodeXML','xix.png','Export a complete ximclude folder',-91,'ximIO',0,'',0),
    (6511,5021,'Export','serializeNodeXML','xix.png','Export a ximclude subfolder',-91,'ximIO',0,'',0),
    (6512,5018,'Export','serializeNodeXML','xix.png','Export a complete documents folder',-91,'ximIO',0,'',0),
    (6513,5031,'Export','serializeNodeXML','xix.png','Export a XML document',-91,'ximIO',0,'',0),
    (6514,5054,'Export','serializeNodeXML','xix.png','Export a complete ximlet folder',-91,'ximIO',0,'',0),
    (6515,5055,'Export','serializeNodeXML','xix.png','Export a ximlet subfolder',-91,'ximIO',0,'',0),
    (6516,5056,'Export','serializeNodeXML','xix.png','Export a ximlet document',-91,'ximIO',0,'',0),
    (6517,5014,'Export','serializeNodeXML','xix.png','Export a complete server',-91,'ximIO',0,'',0),
    (6518,5015,'Export','serializeNodeXML','xix.png','Export a complete section',-91,'ximIO',0,'',0),
    (6519,5053,'Export','serializeNodeXML','xix.png','Export a complete schema',-91,'ximIO',0,'',0),
    (6520,5026,'Export','serializeNodeXML','xix.png','Export a complete template',-91,'ximIO',0,'',0),
    (6550,5012,'Import','deserializeNodeXML','xix.png','Import all projects',-92,'ximIO',0,'',0),
    (6551,5013,'Import','deserializeNodeXML','xix.png','Import a complete project',-92,'ximIO',0,'',0),
    (6552,5050,'Import','deserializeNodeXML','xix.png','Import a link',-92,'ximIO',0,'',0),
    (6553,5048,'Import','deserializeNodeXML','xix.png','Import a link folder',-92,'ximIO',0,'',0),
    (6554,5022,'Import','deserializeNodeXML','xix.png','Import a complete common folder',-92,'ximIO',0,'',0),
    (6555,5023,'Import','deserializeNodeXML','xix.png','Import a common subfolder',-92,'ximIO',0,'',0),
    (6556,5024,'Import','deserializeNodeXML','xix.png','Import a complete CSS folder',-92,'ximIO',0,'',0),
    (6557,5025,'Import','deserializeNodeXML','xix.png','Import a CSS subfolder',-92,'ximIO',0,'',0),
    (6558,5016,'Import','deserializeNodeXML','xix.png','Import a complete image folder',-92,'ximIO',0,'',0),
    (6559,5017,'Import','deserializeNodeXML','xix.png','Import a image subfolder',-92,'ximIO',0,'',0),
    (6560,5020,'Import','deserializeNodeXML','xix.png','Import a complete ximclude folder',-92,'ximIO',0,'',0),
    (6561,5021,'Import','deserializeNodeXML','xix.png','Import a ximclude subfolder',-92,'ximIO',0,'',0),
    (6562,5018,'Import','deserializeNodeXML','xix.png','Import a complete documents folder',-92,'ximIO',0,'',0),
    (6563,5031,'Import','deserializeNodeXML','xix.png','Import a XML document',-92,'ximIO',0,'',0),
    (6564,5054,'Import','deserializeNodeXML','xix.png','Import a complete ximlet folder',-92,'ximIO',0,'',0),
    (6565,5055,'Import','deserializeNodeXML','xix.png','Import a ximlet subfolder',-92,'ximIO',0,'',0),
    (6566,5056,'Import','deserializeNodeXML','xix.png','Import a ximlet document',-92,'ximIO',0,'',0),
    (6567,5014,'Import','deserializeNodeXML','xix.png','Import a complete server',-92,'ximIO',0,'',0),
    (6568,5015,'Import','deserializeNodeXML','xix.png','Import a complete section',-92,'ximIO',0,'',0),
    (6569,5053,'Import','deserializeNodeXML','xix.png','Import a complete schema',-92,'ximIO',0,'',0),
    (6570,5026,'Import','deserializeNodeXML','xix.png','Import a complete template',-92,'ximIO',0,'',0);

INSERT INTO `Channels` (`IdChannel`, `Name`, `Description`, `DefaultExtension`, `Format`, `Filter`, `RenderMode`, `OutputType`, `Default_Channel`
    , `RenderType`, `idlanguage`)
VALUES
	(10001,'HTML','HyperText Markup Language','html',NULL,NULL,'ximdex','web',1, 'static', 'html5');
 
INSERT INTO `Config` (`IdConfig`, `ConfigKey`, `ConfigValue`)
VALUES
	(2,'NodeRoot','/data/nodes'),
	(3,'TempRoot','/data/tmp'),
	(4,'SyncRoot','/data/sync'),
	(5,'FileRoot','/data/files'),
	(6,'UrlRoot',''),
	(7,'GeneralGroup','101'),
	(8,'ProjectsNode','10000'),
	(10,'EncodingTag','<?xml version="1.0" encoding="UTF-8"?>'),
	(11,'DoctypeTag','<!DOCTYPE docxap [
<!ENTITY Ntilde "_MAPGENcode_Ntilde_">
<!ENTITY ntilde "_MAPGENcode_ntilde_">
<!ENTITY aacute "_MAPGENcode_aacute_">
<!ENTITY eacute "_MAPGENcode_eacute_">
<!ENTITY iacute "_MAPGENcode_iacute_">
<!ENTITY oacute "_MAPGENcode_oacute_">
<!ENTITY uacute "_MAPGENcode_uacute_">
<!ENTITY Aacute "_MAPGENcode_Aacute_">
<!ENTITY Eacute "_MAPGENcode_Eacute_">
<!ENTITY Iacute "_MAPGENcode_Iacute_">
 <!ENTITY Oacute "_MAPGENcode_Oacute_">
<!ENTITY Uacute "_MAPGENcode_Uacute_">
<!ENTITY agrave "_MAPGENcode_agrave_">
 <!ENTITY egrave "_MAPGENcode_egrave_">
<!ENTITY igrave "_MAPGENcode_igrave_">
 <!ENTITY ograve "_MAPGENcode_ograve_">
<!ENTITY ugrave "_MAPGENcode_ugrave_">
<!ENTITY Agrave "_MAPGENcode_Agrave_">
<!ENTITY Egrave "_MAPGENcode_Egrave_">
<!ENTITY Igrave "_MAPGENcode_Igrave_">
<!ENTITY Ograve "_MAPGENcode_Ograve_">
<!ENTITY Ugrave "_MAPGENcode_Ugrave_">
<!ENTITY auml   "_MAPGENcode_auml_">
<!ENTITY euml   "_MAPGENcode_euml_">
<!ENTITY iuml   "_MAPGENcode_iuml_">
<!ENTITY ouml   "_MAPGENcode_ouml_">
<!ENTITY uuml   "_MAPGENcode_uuml_">
<!ENTITY Auml   "_MAPGENcode_Auml_">
<!ENTITY Euml   "_MAPGENcode_Euml_">
<!ENTITY Iuml   "_MAPGENcode_Iuml_">
<!ENTITY Ouml   "_MAPGENcode_Ouml_">
<!ENTITY Uuml   "_MAPGENcode_Uuml_">
<!ENTITY Ccedil "_MAPGENcode_Ccedil_">
<!ENTITY ccedil "_MAPGENcode_ccedil_">
<!ENTITY ordf   "_MAPGENcode_ordf_">
<!ENTITY ordm   "_MAPGENcode_ordm_">
<!ENTITY iquest "_MAPGENcode_iquest_">
<!ENTITY iexcl  "_MAPGENcode_iexcl_">
<!ENTITY nbsp   "_MAPGENcode_nbsp_">
<!ENTITY middot "_MAPGENcode_middot_">
<!ENTITY acute  "_MAPGENcode_acute_">
<!ENTITY copy  "_MAPGENcode_copy_">
]>
'),
	(12,'DefaultLanguage','es'),
	(13,'BlockExpireTime','120'),
	(14,'MaximunGapSizeTolerance','180'),
	(16,'SchemasDirName','schemes'),
	(17,'TemplatesDirName','templates'),
	(18,'PurgeSubversionsOnNewVersion','1'),
	(19,'MaxSubVersionsAllowed','4'),
	(20,'PreviewInServer','0'),
	(21,'PurgeVersionsOnNewVersion','0'),
	(22,'MaxVersionsAllowed','3'),
	(23,'ximid','-'),
	(24,'VersionName','Ximdex 4.0'),
	(25,'UTFLevel','0'),
	(26,'EmptyHrefCode','/404.html'),
	(27,'defaultRNG',NULL),
	(28,'defaultChannel',NULL),
	(29,'dexCache',NULL),
	(30,'PublishOnDisabledServers',NULL),
	(31,'defaultWebdavPVD',NULL),
	(32,'locale','en_US'),
	(33,'displayEncoding','UTF-8'),
	(34,'dbEncoding','UTF-8'),
	(35,'dataEncoding','UTF-8'),
	(36,'workingEncoding','UTF-8'),
	(37,'ActionsStats','0'),
	(38,'IdDefaultWorkflow','403'),
	(39,'DefaultInitialStatus','Edition'),
	(40,'DefaultFinalStatus','Publication'),
	(41,'PullMode','0'),
	(42,'EnricherKey',''),
	(43,'AddVersionUsesPool','0'),
	(44,'StructuralDeps','css,asset,script'),
	(45,'xplorer','1'),
	(46,'SyncStats','0'),
	(47,'XslIncludesOnServer','0'),
	(48,'TokenTTL','30'),
	(49,'ApiIV',''),
	(50,'ApiKey',''),
	(51,'DevEnv','1'),
	(52,'PublishPathFormat','suffix'),
	(53,'ChunksFolder','uploaded_files'),
	(54,'UploadsFolder','uploaded_files'),
	(55,'MaxItemsPerGroup','50'),
	(56,'DisableCache', '0'),
	(57, 'UrlHost', ''),
	(58, 'CacheRoot', '/data/cache');
 
INSERT INTO `Contexts` (`id`, `Context`)
VALUES
	(2,'webdav'),
	(1,'ximdex');
 
INSERT INTO `DependenceTypes` (`IdDepType`, `Type`)
VALUES
	(1,'asset'),
	(2,'channel'),
	(3,'language'),
	(4,'schema'),
	(5,'symlink'),
	(6,'template'),
	(7,'ximlet'),
	(8,'ximlink');
 
INSERT INTO `Encodes` (`IdEncode`, `Description`)
VALUES
	('UTF-8','UTF-8 Encoding'),
	('ISO-8859-1','ISO-8859-1 Encoding');

INSERT INTO `Groups` (`IdGroup`, `Name`)
VALUES
	(101,'General');

INSERT INTO `IsoCodes` (`IdIsoCode`, `Iso2`, `Iso3`, `Name`)
VALUES
	(1,'fr','fra','French'),
	(2,'it','ita','Italian'),
	(3,'es','esp','Spanish'),
	(4,'de','ger','German'),
	(5,'en','eng','English'),
	(6,'pt','pot','Portuguese'),
	(7,'gl','glg','Galician'),
	(8,'ca','cat','Catalan'),
	(9,'eu','eus','Euskera'),
	(10,'va','val','Valencian');

INSERT INTO `Languages` (`IdLanguage`, `Name`, `IsoName`, `Enabled`)
VALUES
	(10002,'Spanish','es',1),
	(10003,'English','en',1);

INSERT INTO `Locales` (`ID`, `Code`, `Name`, `Enabled`)
VALUES
	(1,'es_ES','Spanish',1),
	(2,'en_US','English',1),
	(3,'de_DE','German',0),
	(4,'pt_BR','Portuguese',0);

INSERT INTO `Namespaces` (`idNamespace`, `service`, `type`, `nemo`, `uri`, `recursive`, `category`, `isSemantic`)
VALUES
	(1,'Ximdex','Custom','custom','http://<ximdex_local_url>/',0,'generic',0),
	(2,'Ximdex','Custom','custom','http://<ximdex_local_url>/',0,'generic',0);

INSERT INTO `NoActionsInNode` (`IdNode`, `IdAction`)
VALUES
	(101,6096),
	(101,6108),
	(201,6109),
	(301,6003);

insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5039', '5083', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5320', '5310', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5310', '5320', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5307', '5320', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5320', '5320', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5307', '5310', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5303', '5302', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5313', '5302', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5055', '5055', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5055', '5054', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5032', '5018', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5056', '5054', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5054', '5015', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5054', '5014', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5076', '5020', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5057', '5056', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5032', '5031', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5053', '5013', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5015', '5014', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5062', '5013', '2');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5049', '5048', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5048', '5048', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5049', '5050', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5048', '5050', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5028', '5025', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5025', '5025', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5028', '5024', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5025', '5024', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5039', '5016', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5085', '5084', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5084', '5083', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5083', '5014', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5079', '5035', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5078', '5053', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5077', '5026', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5041', '5023', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5040', '5023', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5039', '5023', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5023', '5023', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5041', '5022', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5040', '5022', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5039', '5022', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5023', '5022', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5021', '5021', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5039', '5021', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5021', '5020', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5056', '5055', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5076', '5021', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5031', '5018', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5039', '5017', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5017', '5017', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5040', '5017', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5040', '5016', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5017', '5016', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5015', '5015', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5020', '5015', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5022', '5015', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5026', '5015', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5018', '5015', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5016', '5015', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5020', '5014', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5022', '5014', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5026', '5014', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5018', '5014', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5016', '5014', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5024', '5014', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5014', '5014', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5050', '5013', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5047', '5013', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5026', '5013', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5014', '5013', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5013', '5012', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5036', '5035', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5009', '5003', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5008', '5007', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5007', '5006', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5010', '5005', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5038', '5037', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5034', '5030', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5011', '5004', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5033', '5029', '0');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5037', '5002', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5035', '5002', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5030', '5002', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5029', '5002', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5006', '5002', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5005', '5002', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5004', '5002', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5003', '5002', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5012', '5001', '1');
insert into `NodeAllowedContents` ( `NodeType`, `IdNodeType`, `Amount`) values ( '5002', '5001', '1');

INSERT INTO `NodeConstructors` (`IdNodeConstructor`, `IdNodeType`, `IdAction`)
VALUES
	(1,5026,6012),
	(2,5050,6011),
	(3,5053,6011),
	(4,5014,6012),
	(5,5048,6070),
	(6,5049,6072),
	(8,5024,6012),
	(9,5016,6012),
	(10,5018,6012),
	(11,5022,6012),
	(12,5020,6012),
	(13,5054,6012),
	(14,5015,6013),
	(15,5031,6044),
	(16,5056,6138),
	(17,5032,6045),
	(18,5057,6151),
	(19,5013,6011),
	(20,5017,6015),
	(25,5305,6710),
	(27,5302,6702),
	(28,5307,6726),
	(29,5310,6720),
	(30,5303,6769),
	(32,5311,6769);

INSERT INTO `NodeDefaultContents` (`IdNodeDefaultContent`, `IdNodeType`, `NodeType`, `Name`, `State`, `Params`)
VALUES
	(1,5015,5016,'images',NULL,NULL),
	(3,5015,5018,'documents',NULL,NULL),
	(4,5015,5026,'templates',NULL,NULL),
	(5,5015,5022,'common',NULL,NULL),
	(6,5015,5020,'ximclude',NULL,NULL),
	(7,5014,5024,'css',NULL,NULL),
	(8,5014,5016,'images',NULL,NULL),
	(10,5014,5018,'documents',NULL,NULL),
	(11,5014,5026,'templates',NULL,NULL),
	(12,5014,5022,'common',NULL,NULL),
	(13,5014,5020,'ximclude',NULL,NULL),
	(14,5013,5026,'templates',NULL,NULL),
	(16,5013,5050,'links',NULL,NULL),
	(17,5013,5053,'schemes',NULL,NULL),
	(18,5014,5054,'ximlet',NULL,NULL),
	(19,5015,5054,'ximlet',NULL,NULL),
	(20,5014,5083,'metadata',NULL,NULL);

INSERT INTO `NodeProperties` (`IdNodeProperty`, `IdNode`, `Property`, `Value`)
VALUES
	(1,10000,'Transformer','xslt'),
	(2,10000,'pipeline','3');

INSERT INTO `Nodes` (`IdNode`, `IdParent`, `IdNodeType`, `Name`, `IdState`, `BlockTime`, `BlockUser`, `CreationDate`, `ModificationDate`, `Description`, `SharedWorkflow`, `Path`)
VALUES
	(1,NULL,5001,'Ximdex',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(2,1,5002,'Control center',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(3,2,5003,'User manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(4,2,5004,'Group manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5,2,5005,'Role manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6,2,5006,'Type of node manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(7,2,5030,'Language manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(8,2,5035,'Workflow manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(9,2,5029,'Channel manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(10,2,5037,'Permit manager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(11,2,5058,'Property manager',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(12,2,5044,'Configuration manager',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(14,12,5082,'Allowed extensions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(101,4,5011,'General',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(201,5,5010,'Administrator',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(202,5,5010,'Editor',NULL,0,NULL,1306935613,1306935613,NULL,NULL,NULL),
	(203,5,5010,'Publisher',NULL,0,NULL,1306936491,1306936491,NULL,NULL,NULL),
	(204,5,5010,'Expert',NULL,0,NULL,1306937208,1306937208,NULL,NULL,NULL),
	(301,3,5009,'ximdex',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(403,8,5079,'Workflow master',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(1001,10,5038,'View all nodes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(1002,10,5038,'Delete on cascade',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(1003,10,5038,'Receive integrity checks',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5001,6,5007,'Root',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5002,6,5007,'ControlCenter',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5003,6,5007,'UserManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5004,6,5007,'GroupManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5005,6,5007,'RoleManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5006,6,5007,'NodeTypeManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5007,6,5007,'NodeType',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5008,6,5007,'Action',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5009,6,5007,'User',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5010,6,5007,'Role',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5011,6,5007,'Group',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5012,6,5007,'Projects',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5013,6,5007,'Project',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5014,6,5007,'Server',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5015,6,5007,'Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5016,6,5007,'ImagesRootFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5017,6,5007,'ImagesFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5018,6,5007,'XmlRootFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5020,6,5007,'ImportRootFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5021,6,5007,'ImportFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5022,6,5007,'CommonRootFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5023,6,5007,'CommonFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5024,6,5007,'CssRootFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5025,6,5007,'CssFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5026,6,5007,'TemplatesRootFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5028,6,5007,'CssFile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5029,6,5007,'ChannelManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5030,6,5007,'LanguageManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5031,6,5007,'XmlContainer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5032,6,5007,'XmlDocument',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5033,6,5007,'Channel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5034,6,5007,'Language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5035,6,5007,'WorkflowManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5036,6,5007,'WorkflowState',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5037,6,5007,'PermissionManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5038,6,5007,'Permission',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5039,6,5007,'TextFile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5040,6,5007,'ImageFile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5041,6,5007,'BinaryFile',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5042,6,5007,'HtmlFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5043,6,5007,'ErrorFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5047,6,5007,'TemplateImages',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5048,6,5007,'LinkFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5049,6,5007,'Link',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5050,6,5007,'LinkManager',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5053,6,5007,'TemplateViewFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5054,6,5007,'XimletRootFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5055,6,5007,'XimletFolder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5056,6,5007,'XimletContainer',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5057,6,5007,'Ximlet',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(5058,6,5007,'PropertiesManager',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(5059,6,5007,'Property',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(5060,6,5007,'SystemContainer',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(5063,6,5007,'ProjectDicFolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(5064,6,5007,'Dictionary',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(5065,6,5007,'DicValue',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(5066,6,5007,'DicFolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(5068,6,5007,'PropSet',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6001,5003,5008,'Add user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6002,5009,5008,'Modify user data',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6003,5009,5008,'Delete user',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6004,5009,5008,'Manage groups',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6005,5010,5008,'Modify role',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6006,5004,5008,'Add group',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6007,5015,5008,'Configure section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6008,5007,5008,'Modify node type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6009,5006,5008,'Add node type',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6010,5005,5008,'Add role',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6011,5012,5008,'Add project',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6012,5013,5008,'Add server',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6013,5014,5008,'Add section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6014,5015,5008,'Add Section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6015,5016,5008,'Add image folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6016,5017,5008,'Add image folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6018,5020,5008,'Add import folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6019,5021,5008,'Add import folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6020,5022,5008,'Add common folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6021,5023,5008,'Add common folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6022,5024,5008,'Add CSS folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6023,5025,5008,'Add CSS folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6025,5015,5008,'Change section name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6026,5013,5008,'Change project name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6027,5014,5008,'Change server name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6028,5017,5008,'Change name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6030,5021,5008,'Change name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6031,5023,5008,'Change name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6032,5025,5008,'Change name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6034,5013,5008,'Delete proyect',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6035,5014,5008,'Delete server',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6036,5015,5008,'Delete section',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6037,5017,5008,'Delete folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6039,5021,5008,'Delete folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6040,5023,5008,'Delete folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6041,5025,5008,'Delete folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6043,5018,5008,'Add XML Documents',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6044,5018,5008,'Add new XML',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6045,5031,5008,'Add language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6046,5035,5008,'Manage status',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6047,5030,5008,'Add language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6048,5029,5008,'Add Channel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6049,5041,5008,'Download file',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6050,5040,5008,'Download image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6051,5039,5008,'Download file',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6052,5040,5008,'Image preview',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6063,5031,5008,'Delete document',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6064,5031,5008,'Change XML',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6065,5032,5008,'Edit XML',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6067,5008,5008,'Delete action',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6069,5050,5008,'Add category',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6070,5048,5008,'Add category',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6071,5050,5008,'Add external link',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6072,5048,5008,'Add external link',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6073,5049,5008,'Edit properties',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6074,5015,5008,'Asocciated groups',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6081,5010,5008,'Modify associated status of workflow',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6082,5036,5008,'Modify associated roles',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6083,5041,5008,'Change name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6084,5041,5008,'Delete file',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6085,5040,5008,'Change image name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6086,5040,5008,'Delete Image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6087,5039,5008,'Change name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6088,5039,5008,'Delete',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6094,5039,5008,'Edit file',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6095,5033,5008,'Channel properties',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6096,5011,5008,'Group propertis',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6097,5034,5008,'Modify language',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6098,5032,5008,'Move to next state',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6099,5032,5008,'Move to previous state',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6100,5032,5008,'Publish advance',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6101,5011,5008,'Change users',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6102,5034,5008,'Delete',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6103,5028,5008,'Change name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6104,5028,5008,'Download file',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6105,5028,5008,'Edit',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6106,5028,5008,'Delete',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6107,5033,5008,'Delete channel',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6108,5011,5008,'Delete group',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6109,5010,5008,'Delete role',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6117,5032,5008,'Generate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6118,5048,5008,'Change name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6119,5048,5008,'Delete folder',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6120,5049,5008,'Delete link',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6121,5036,5008,'Delete',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6122,5013,5008,'Associated groups',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6123,5014,5008,'Associated groups',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6124,5018,5008,'Modify view template',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6125,5014,5008,'Manage servers',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6126,5039,5008,'Move to next state',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6127,5039,5008,'Move to previous state',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6128,5041,5008,'Move to next state',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6129,5041,5008,'Move to previous state',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6130,5040,5008,'Move to next state',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6131,5040,5008,'Move to previous state',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6132,5028,5008,'Move to next state',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6133,5028,5008,'Move to previous state',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6134,5032,5008,'Delete document',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6135,5032,5008,'Symbolic link',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6136,5032,5008,'Edit in text mode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6137,5054,5008,'Add new ximlet folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6138,5054,5008,'Add new ximlet',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6139,5055,5008,'Add new ximlet folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6140,5055,5008,'Add new ximlet',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6141,5055,5008,'Delete folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6142,5055,5008,'Change name',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6143,5032,5008,'Version manager',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6144,5040,5008,'Version manager',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6145,5041,5008,'Version manager',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6146,5028,5008,'Version manager',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6148,5039,5008,'Version manager',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6150,5057,5008,'Version manager',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6151,5056,5008,'Add Language',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6152,5056,5008,'Delete ximlet',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6153,5056,5008,'Change ximlet name',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6154,5057,5008,'Edit ximlet',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6155,5057,5008,'Delete document',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6156,5057,5008,'Symbolic link',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6157,5057,5008,'Edit in text mode',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6168,5040,5008,'Replace image',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6170,5014,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6171,5015,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6172,5017,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6173,5021,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6174,5023,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6175,5028,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6176,5031,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6177,5039,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6178,5040,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6179,5041,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6181,5048,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6182,5049,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6183,5056,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6184,5015,5008,'Associate section with ximlet',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6202,5014,5008,'Associate ximlet with server',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6204,5015,5008,'Publish section',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6205,5015,5008,'Expire section',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6300,5304,5008,'Add images',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6304,5301,5008,'Change name',NULL,NULL,NULL,0,0,NULL,NULL,NULL),
	(6314,5307,5008,'Edit XML',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6317,5307,5008,'Version repository',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6318,5307,5008,'Generate',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6319,5307,5008,'Delete document',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6320,5307,5008,'Symbolic link',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6321,5307,5008,'Edit in text mode',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6322,5307,5008,'Version manager',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6323,5308,5008,'Download image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6324,5308,5008,'Image preview',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6325,5308,5008,'Change image name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6326,5308,5008,'Delete image',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6327,5308,5008,'Move to next state',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6328,5308,5008,'Move to previous state',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6329,5308,5008,'Version manager',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6330,5308,5008,'Replace image',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6331,5308,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6342,5037,5008,'Move to previous state',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6343,5016,5008,'Add images',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6344,5017,5008,'Add images',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6345,5026,5008,'Add template',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6346,5022,5008,'Add files',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6347,5023,5008,'Add files',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6348,5024,5008,'Add style sheets',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6349,5025,5008,'Add style Sheets',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6385,5032,5008,'Preview',0,0,NULL,0,0,NULL,NULL,NULL),
	(10000,1,5012,'Projects',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(10001,9,5033,'HTML',NULL,0,NULL,NULL,NULL,'HTML',NULL,'/Ximdex/Centro de Control/Gestor de Canales'),
	(10002,7,5034,'Spanish',NULL,0,NULL,NULL,NULL,'Spanish language',NULL,'/Ximdex/Centro de Control/Gestor de Idiomas'),
	(10003,7,5034,'English',NULL,0,NULL,NULL,NULL,'English language',NULL,'/Ximdex/Centro de Control/Gestor de Idiomas'),
	(5076,6,5007,'NodeHt',0,0,NULL,0,0,NULL,NULL,NULL),
	(6227,5076,5008,'Edit file',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6228,5076,5008,'Download file',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6229,5076,5008,'HTML editor',0,0,NULL,0,0,NULL,NULL,NULL),
	(6230,5076,5008,'Change name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6231,5076,5008,'Version manager',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6232,5076,5008,'Delete',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(6233,5076,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6234,5076,5008,'Replace file',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6236,5020,5008,'Add multiple HTML files',0,0,NULL,0,0,NULL,NULL,NULL),
	(50,60,5061,'Language',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(51,60,5061,'Document_type',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(52,60,5061,'Channel',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(53,60,5061,'Channels',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(54,60,5061,'Nodeid',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(55,60,5061,'Project',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(56,60,5061,'Server',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(57,60,5061,'Document',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(58,60,5061,'nombre_documento',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(60,11,5060,'System properties',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6500,5012,5008,'Export all projects',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6501,5013,5008,'Export a complete project',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6502,5050,5008,'Export a link',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6503,5048,5008,'Export a link folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6504,5022,5008,'Export a complete common folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6505,5023,5008,'Export a common subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6506,5024,5008,'Export a complete CSS folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6507,5025,5008,'Export a CSS subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6508,5016,5008,'Export a complete image folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6509,5017,5008,'Export a image subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6510,5020,5008,'Export a complete ximclude folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6511,5021,5008,'Export a ximclude subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6512,5018,5008,'Export a complete documents folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6513,5031,5008,'Export a XML document',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6514,5054,5008,'Export a complete ximlet folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6515,5055,5008,'Export a ximlet subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6516,5056,5008,'Export a ximlet document',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6517,5014,5008,'Export a complete server',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6518,5015,5008,'Export a complete section',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6519,5053,5008,'Export a complete schema',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6520,5026,5008,'Export a complete template',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6550,5012,5008,'Import all projects',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6551,5013,5008,'Import a complete project',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6552,5050,5008,'Import a link',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6553,5048,5008,'Import a complete link folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6554,5022,5008,'Import a complete common folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6555,5023,5008,'Import a common subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6556,5024,5008,'Import a complete CSS folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6557,5025,5008,'Import a CSS subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6558,5016,5008,'Import a complete image folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6559,5017,5008,'Import a image subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6560,5020,5008,'Import a complete ximclude folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6561,5021,5008,'Import a ximclude subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6562,5018,5008,'Import a complete documents folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6563,5031,5008,'Import a XML document',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6564,5054,5008,'Import a complete ximlet folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6565,5055,5008,'Import a ximlet subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6566,5056,5008,'Import a ximlet document',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6567,5014,5008,'Import a complete server',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6568,5015,5008,'Import a complete section',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6569,5053,5008,'Import a complete schema',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6570,5026,5008,'Import a complete template',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6600,5013,5008,'Copy a complete project',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6601,5050,5008,'Copy a link',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6602,5048,5008,'Copy a link folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6603,5022,5008,'Copy a complete common folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6604,5023,5008,'Copy a common subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6605,5024,5008,'Copy a complete CSS folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6606,5025,5008,'Copy a CSS subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6607,5016,5008,'Copy a complete image folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6608,5017,5008,'Copy a image subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6609,5020,5008,'Copy a complete ximclude folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6610,5021,5008,'Copy a ximclude subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6611,5018,5008,'Copy a complete documents folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6612,5031,5008,'Copy a XML document',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6613,5054,5008,'Copy a complete ximlet folder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6614,5055,5008,'Copy a ximlet subfolder',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6615,5056,5008,'Copy a ximlet document',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6616,5049,5008,'Copy a link',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6617,5057,5008,'Copy a ximlet',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6619,5014,5008,'Copy a complete server',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6620,5015,5008,'Copy a complete section',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6621,5053,5008,'Copy a complete schema',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6622,5026,5008,'Copy a complete template',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6626,5039,5008,'Copy a text file',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6627,5040,5008,'Copy a binary file',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6628,5041,5008,'Copy a binary file',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(6629,5028,5008,'Copy a style sheet',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(7229,5048,5008,'Check links',0,0,NULL,0,0,NULL,NULL,NULL),
	(7231,5050,5008,'Check links',0,0,NULL,0,0,NULL,NULL,NULL),
	(7232,5034,5008,'Associate projects with language',0,0,NULL,0,0,NULL,NULL,NULL),
	(7233,5013,5008,'Associate languages with projects',0,0,NULL,0,0,NULL,NULL,NULL),
	(7234,5033,5008,'Associate projects with channel',0,0,NULL,0,0,NULL,NULL,NULL),
	(7235,5013,5008,'Associate channels with project',0,0,NULL,0,0,NULL,NULL,NULL),
	(7236,5057,5008,'Manage associations',0,0,NULL,0,0,NULL,NULL,NULL),
	(8117,5077,5008,'Change name',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
	(8119,5077,5008,'Version manager',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(8120,5077,5008,'Move node',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(8121,5026,5008,'Delete templates',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(8122,10000,5080,'Modules',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(8123,8122,5081,'ximIO',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(8126,8122,5081,'ximSYNC',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(8127,8122,5081,'ximTAGS',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(8128,8122,5081,'ximTOUR',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(8129,8122,5081,'Xowl',NULL,0,NULL,0,0,NULL,NULL,NULL),
	(8130,8122,5081,'XSparrow',NULL,0,NULL,0,0,NULL,NULL,NULL);

INSERT INTO `NodetypeModes` (`id`, `IdNodeType`, `Mode`, `IdAction`)
VALUES
	(1,5001,'C',NULL),
	(2,5001,'R',NULL),
	(3,5001,'U',NULL),
	(4,5001,'D',NULL),
	(5,5002,'C',NULL),
	(6,5002,'R',NULL),
	(7,5002,'U',NULL),
	(8,5002,'D',NULL),
	(9,5003,'C',NULL),
	(10,5003,'R',NULL),
	(11,5003,'U',NULL),
	(12,5003,'D',NULL),
	(13,5004,'C',NULL),
	(14,5004,'R',NULL),
	(15,5004,'U',NULL),
	(16,5004,'D',NULL),
	(17,5005,'C',NULL),
	(18,5005,'R',NULL),
	(19,5005,'U',NULL),
	(20,5005,'D',NULL),
	(21,5006,'C',NULL),
	(22,5006,'R',NULL),
	(23,5006,'U',NULL),
	(24,5006,'D',NULL),
	(25,5007,'C',NULL),
	(26,5007,'R',NULL),
	(27,5007,'U',NULL),
	(28,5007,'D',NULL),
	(29,5008,'C',NULL),
	(30,5008,'R',NULL),
	(31,5008,'U',NULL),
	(32,5008,'D',NULL),
	(33,5009,'C',NULL),
	(34,5009,'R',NULL),
	(35,5009,'U',NULL),
	(36,5009,'D',NULL),
	(37,5010,'C',NULL),
	(38,5010,'R',NULL),
	(39,5010,'U',NULL),
	(40,5010,'D',NULL),
	(41,5011,'C',NULL),
	(42,5011,'R',NULL),
	(43,5011,'U',NULL),
	(44,5011,'D',NULL),
	(45,5012,'C',NULL),
	(46,5012,'R',NULL),
	(47,5012,'U',NULL),
	(48,5012,'D',NULL),
	(49,5013,'C',6011),
	(50,5013,'R',NULL),
	(51,5013,'U',6026),
	(52,5013,'D',6034),
	(53,5014,'C',6012),
	(54,5014,'R',NULL),
	(55,5014,'U',6027),
	(56,5014,'D',6035),
	(57,5015,'C',6013),
	(58,5015,'R',NULL),
	(59,5015,'U',6025),
	(60,5015,'D',6036),
	(61,5016,'C',NULL),
	(62,5016,'R',NULL),
	(63,5016,'U',NULL),
	(64,5016,'D',NULL),
	(65,5017,'C',6015),
	(66,5017,'R',NULL),
	(67,5017,'U',6028),
	(68,5017,'D',6037),
	(69,5018,'C',NULL),
	(70,5018,'R',NULL),
	(71,5018,'U',NULL),
	(72,5018,'D',NULL),
	(73,5020,'C',NULL),
	(74,5020,'R',NULL),
	(75,5020,'U',NULL),
	(76,5020,'D',NULL),
	(77,5021,'C',5018),
	(78,5021,'R',NULL),
	(79,5021,'U',6030),
	(80,5021,'D',6039),
	(81,5022,'C',NULL),
	(82,5022,'R',NULL),
	(83,5022,'U',NULL),
	(84,5022,'D',NULL),
	(85,5023,'C',6020),
	(86,5023,'R',NULL),
	(87,5023,'U',6031),
	(88,5023,'D',6040),
	(89,5024,'C',NULL),
	(90,5024,'R',NULL),
	(91,5024,'U',NULL),
	(92,5024,'D',NULL),
	(93,5025,'C',6022),
	(94,5025,'R',NULL),
	(95,5025,'U',6032),
	(96,5025,'D',6041),
	(97,5026,'C',NULL),
	(98,5026,'R',NULL),
	(99,5026,'U',NULL),
	(100,5026,'D',NULL),
	(102,5028,'R',NULL),
	(103,5028,'U',6105),
	(104,5028,'D',6106),
	(105,5029,'C',NULL),
	(106,5029,'R',NULL),
	(107,5029,'U',NULL),
	(108,5029,'D',NULL),
	(109,5030,'C',NULL),
	(110,5030,'R',NULL),
	(111,5030,'U',NULL),
	(112,5030,'D',NULL),
	(113,5031,'C',6044),
	(114,5031,'R',NULL),
	(115,5031,'U',6045),
	(116,5031,'D',6063),
	(117,5032,'C',6045),
	(118,5032,'R',NULL),
	(119,5032,'U',6136),
	(120,5032,'D',6134),
	(121,5033,'C',6048),
	(122,5033,'R',NULL),
	(123,5033,'U',6095),
	(124,5033,'D',6107),
	(125,5034,'C',6047),
	(126,5034,'R',NULL),
	(127,5034,'U',6097),
	(128,5034,'D',6102),
	(129,5035,'C',NULL),
	(130,5035,'R',NULL),
	(131,5035,'U',NULL),
	(132,5035,'D',NULL),
	(133,5036,'C',NULL),
	(134,5036,'R',NULL),
	(135,5036,'U',NULL),
	(136,5036,'D',NULL),
	(137,5037,'C',NULL),
	(138,5037,'R',NULL),
	(139,5037,'U',NULL),
	(140,5037,'D',NULL),
	(141,5038,'C',NULL),
	(142,5038,'R',NULL),
	(143,5038,'U',NULL),
	(144,5038,'D',NULL),
	(146,5039,'R',NULL),
	(147,5039,'U',6094),
	(148,5039,'D',6088),
	(150,5040,'R',NULL),
	(151,5040,'U',6085),
	(152,5040,'D',6086),
	(154,5041,'R',NULL),
	(155,5041,'U',6083),
	(156,5041,'D',6084),
	(157,5043,'C',NULL),
	(158,5043,'R',NULL),
	(159,5043,'U',NULL),
	(160,5043,'D',NULL),
	(169,5048,'C',6069),
	(170,5048,'R',NULL),
	(171,5048,'U',6118),
	(172,5048,'D',6119),
	(173,5049,'C',6071),
	(174,5049,'R',NULL),
	(175,5049,'U',6073),
	(176,5049,'D',6120),
	(177,5050,'C',NULL),
	(178,5050,'R',NULL),
	(179,5050,'U',NULL),
	(180,5050,'D',NULL),
	(181,5053,'C',NULL),
	(182,5053,'R',NULL),
	(183,5053,'U',NULL),
	(184,5053,'D',NULL),
	(185,5054,'C',NULL),
	(186,5054,'R',NULL),
	(187,5054,'U',NULL),
	(188,5054,'D',NULL),
	(189,5055,'C',6137),
	(190,5055,'R',NULL),
	(191,5055,'U',6142),
	(192,5055,'D',6141),
	(193,5056,'C',6138),
	(194,5056,'R',NULL),
	(195,5056,'U',6153),
	(196,5056,'D',6152),
	(197,5057,'C',6151),
	(198,5057,'R',NULL),
	(199,5057,'U',6157),
	(200,5057,'D',6155),
	(201,5058,'C',NULL),
	(202,5058,'R',NULL),
	(203,5058,'U',NULL),
	(204,5058,'D',NULL),
	(205,5059,'C',NULL),
	(206,5059,'R',NULL),
	(207,5059,'U',NULL),
	(208,5059,'D',NULL),
	(209,5060,'C',NULL),
	(210,5060,'R',NULL),
	(211,5060,'U',NULL),
	(212,5060,'D',NULL),
	(213,5061,'C',NULL),
	(214,5061,'R',NULL),
	(215,5061,'U',NULL),
	(216,5061,'D',NULL),
	(217,5062,'C',NULL),
	(218,5062,'R',NULL),
	(219,5062,'U',NULL),
	(220,5062,'D',NULL),
	(221,5063,'C',NULL),
	(222,5063,'R',NULL),
	(223,5063,'U',NULL),
	(224,5063,'D',NULL),
	(225,5064,'C',NULL),
	(226,5064,'R',NULL),
	(227,5064,'U',NULL),
	(228,5064,'D',NULL),
	(229,5065,'C',NULL),
	(230,5065,'R',NULL),
	(231,5065,'U',NULL),
	(232,5065,'D',NULL),
	(233,5066,'C',NULL),
	(234,5066,'R',NULL),
	(235,5066,'U',NULL),
	(236,5066,'D',NULL),
	(241,5068,'C',NULL),
	(242,5068,'R',NULL),
	(243,5068,'U',NULL),
	(244,5068,'D',NULL),
	(274,5076,'R',NULL),
	(275,5076,'U',6229),
	(276,5076,'D',6232);

INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `IsHidden`, `CanDenyDeletion`, `isGenerator`, `IsEnriching`, `System`, `Module`)
VALUES
	(5001,'Root','root','root','Root node of Ximdex',1,0,0,0,0,1,0,0,0,0,0,0,0,1,NULL),
	(5002,'ControlCenter','root','controlcenter','Ximdex control center',0,0,1,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5003,'UserManager','root','user','User manager',0,0,0,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5004,'GroupManager','root','group','Group manager',0,0,0,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5005,'RoleManager','root','rol','Roles manager',0,0,0,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5006,'NodeTypeManager','root','nodetype','Type of node manager',0,0,0,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5007,'NodeType','nodetypenode','nodetype','Definition of node type of Ximdex',0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL),
	(5008,'Action','actionnode','action','Action run on node type of Ximdex',0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL),
	(5009,'User','usernode','user','Ximdex user',0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL),
	(5010,'Role','rolenode','rol','Role on user group of Ximdex',0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL),
	(5011,'Group','groupnode','group','User group of Ximdex',0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL),
	(5013,'Project','foldernode','nodetype','Ximdex project',1,1,1,0,0,1,0,0,0,0,0,0,0,0,NULL),
	(5012,'Projects','projects','projects','Root of Ximdex projects',1,0,1,0,1,1,0,0,0,0,1,0,0,1,NULL),
	(5032,'XmlDocument','xmldocumentnode','doc','XML document',1,1,0,0,0,0,0,1,1,0,0,0,0,0,NULL),
	(5014,'Server','servernode','server','Content server of Ximdex',1,1,1,1,1,1,0,0,1,0,0,0,0,0,NULL),
	(5015,'Section','sectionnode','folder','Ximdex section',1,1,1,1,1,0,0,0,1,0,0,0,0,0,NULL),
	(5016,'ImagesRootFolder','foldernode','folder_images','Root of image folder',1,1,0,0,1,0,0,0,1,0,1,0,0,1,NULL),
	(5017,'ImagesFolder','foldernode','folder_images','Image folder',1,1,0,0,1,0,0,0,1,0,0,0,0,1,NULL),
	(5018,'XmlRootFolder','foldernode','folder_xml','Root of documents folder',1,1,0,0,1,1,0,0,0,0,1,0,0,1,NULL),
	(5020,'ImportRootFolder','foldernode','folder_import','Root of import folder',1,1,0,0,1,0,0,0,0,0,1,0,0,1,NULL),
	(5021,'ImportFolder','foldernode','folder_import','Import folder',1,1,0,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5022,'CommonRootFolder','foldernode','folder_common','Root of common folder',1,1,0,0,1,0,0,0,1,0,1,0,0,1,NULL),
	(5023,'CommonFolder','foldernode','folder_common','Common folder',1,1,0,0,1,0,0,0,1,0,0,0,0,1,NULL),
	(5024,'CssRootFolder','foldernode','folder_css','Root of CSS folder',1,1,0,0,1,0,0,0,1,0,1,0,0,1,NULL),
	(5025,'CssFolder','foldernode','folder_css','CSS folder',1,1,0,0,1,0,0,0,1,0,0,0,0,1,NULL),
	(5026,'TemplatesRootFolder','foldernode','folder_templates','Root of template folder',1,1,0,0,1,0,0,0,0,0,1,0,0,1,NULL),
	(5031,'XmlContainer','Xmlcontainernode','contenedordoc','Container of XML docs',1,0,0,0,1,1,0,0,0,0,0,0,0,0,NULL),
	(5029,'ChannelManager','root','channel','Channel manager',0,0,0,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5030,'LanguageManager','root','language','Language manager',0,0,0,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5033,'Channel','channelnode','channel','Channel',0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL),
	(5034,'Language','languagenode','language','Language',0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL),
	(5035,'WorkflowManager','root','workflow','Workflow manager',0,0,0,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5036,'WorkflowState','statenode','workflow','Workflow status',0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL),
	(5037,'PermissionManager','root','permissions','Permits manager',0,0,0,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5038,'Permission','root','permission','Permit',0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL),
	(5039,'TextFile','commonnode','text_file','Text file',1,1,0,0,0,0,1,0,1,0,0,0,0,0,NULL),
	(5040,'ImageFile','imagenode','image','Image file',1,1,0,0,0,0,1,0,1,0,0,0,0,0,NULL),
	(5041,'BinaryFile','commonnode','binary_file','Binary file',1,1,0,0,0,0,1,0,1,0,0,0,0,0,NULL),
	(5043,'ErrorFolder','foldernode','foldergray','Output error folder',1,1,0,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5044,'ConfigFolder','foldernode','modulesconfig','Container of settings',0,0,0,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5050,'LinkManager','foldernode','folder_links','Root of link manager',0,0,0,0,1,0,0,0,0,0,1,0,0,1,NULL),
	(5048,'LinkFolder','foldernode','folder_links','Category of link manager',0,0,0,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5028,'CssFile','filenode','css_document','Style sheet',1,1,0,0,0,0,1,0,1,0,0,0,0,0,NULL),
	(5049,'Link','linknode','link','Ximdex link',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),
	(5053,'TemplateViewFolder','foldernode','folder_template_view','Folder of view template',1,1,0,0,1,0,0,0,0,0,1,0,0,1,NULL),
	(5054,'XimletRootFolder','foldernode','folder_ximlet','Root folder of ximlets in sections',0,0,0,0,1,1,0,0,0,0,1,0,0,1,NULL),
	(5055,'XimletFolder','foldernode','folder_ximlet','Ximlets folder',0,0,0,0,1,1,0,0,0,0,0,0,0,1,NULL),
	(5056,'XimletContainer','Xmlcontainernode','contenedordoc','Ximlet container',0,0,0,0,1,1,0,0,0,0,0,0,0,0,NULL),
	(5057,'Ximlet','XimletNode','doc','Ximlet',0,0,0,0,0,0,0,1,1,0,0,0,0,0,NULL),
	(5058,'PropertiesManager','root','folder_system_properties','Property manager',0,0,0,0,1,0,0,0,0,0,0,0,0,1,NULL),
	(5059,'Property','propertynode','property','Property',0,0,0,0,0,0,0,0,0,0,0,0,0,0,NULL),
	(5060,'ProjectPropFolder','foldernode','foldergray','Folder of project properties',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,0,NULL,0,0,0,NULL),
	(5061,'SystemProperty','propertynode','property','System properties',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,0,NULL,0,0,1,NULL),
	(5063,'ProjectDicFolder','foldernode','folder','Folder of project dictionary',NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL),
	(5066,'DicFolder','foldernode','foldergray','Folder of dictionary values',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL),
	(5068,'PropSet','foldernode','foldergray','Folder of property set',NULL,NULL,1,1,NULL,NULL,NULL,NULL,NULL,0,NULL,0,0,NULL,NULL),
	(5076,'NodeHt','filenode','nodeht_file','Html node',1,1,0,0,0,0,1,0,0,0,0,0,0,0,NULL),
	(5077,'XslTemplate','xsltnode','xml_document','Template of XSLT transformation',1,1,0,0,0,0,1,0,0,0,0,0,0,0,NULL),
	(5078,'RngVisualTemplate','rngvisualtemplatenode','xml_document','RNG schema for XML documents',1,1,0,0,0,0,1,0,0,0,0,0,0,0,NULL),
	(5079,'Workflow','workflow_process','workflow','Workflow for documents',0,0,0,0,0,0,0,0,0,0,0,0,0,1,''),
	(5080,'ModulesFolder','foldernode','modulesconfig','Container of module settings',0,0,0,0,1,0,0,0,0,1,0,0,0,1,NULL),
	(5081,'ModuleInfoContainer','foldernode','modulesconfig','Container of a module settings',0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL),
	(5082,'AllowedExtensions','foldernode','modulesconfig','Allowed extensions',0,0,0,0,0,0,0,0,0,0,0,0,0,1,NULL),
	(5083,'MetaDataSection','foldernode','folder_xml_meta','Metadata Section',1,1,0,0,1,0,0,0,1,0,NULL,0,0,1,NULL),
	(5084,'MetaDataContainer','Xmlcontainernode','metacontainer','Metadata Document',1,0,0,0,1,1,0,0,0,0,NULL,0,0,0,NULL),
	(5085,'MetaDataDoc','xmldocumentnode','doc','Metadata Language Document',1,0,0,0,0,0,0,1,1,0,NULL,0,0,0,NULL);

INSERT INTO `Permissions` (`IdPermission`, `Name`, `Description`)
VALUES
	(1001,'View all nodes','View all the nodes'),
	(1002,'Delete on cascade','Multi-section deletion'),
	(1003,'Receive integrity checks','Receive the integrity checks'),
	(1004,'Delete_frames','Delete publication windows'),
	(1006,'Expert_mode_allowed','Expert mode edition'),
	(1007,'Ximdex_close','Ximdex controlled closing'),
	(1008,'Structural_publication','Publication without structure'),
	(1009,'Advanced_publication','Advanced publication'),
	(1010,'Ximedit_publication_allowed','Publication from editor');

INSERT INTO `Pipelines` (`id`, `Pipeline`, `IdNode`)
VALUES
	(1,'PublishStrDoc',NULL),
	(2,'PublishNotStrDoc',NULL),
	(3,'Workflow master',403),
	(4,'XeditStrDoc',NULL);

INSERT INTO `PipeProcess` (`id`, `IdTransitionFrom`, `IdTransitionTo`, `IdPipeline`, `Name`)
VALUES
	(1,1,3,1,'StrDocToDexT'),
	(2,3,4,1,'StrDocFromDexTToFinal'),
	(3,NULL,5,2,'NotStrDocToFinal'),
	(4,NULL,6,3,'workflow'),
	(5,7,9,4,'StrDocToXedit');

INSERT INTO `PipeProperties` (`id`, `IdPipeTransition`, `Name`)
VALUES
	(1,1,'CHANNEL'),
	(2,4,'CHANNEL'),
	(3,4,'SERVER'),
	(4,2,'CHANNEL'),
	(5,3,'CHANNEL'),
	(6,3,'TRANSFORMER');

INSERT INTO `PipeStatus` (`id`, `Name`, `Description`)
VALUES
	(1,'ChannelFilter',''),
	(2,'Renderized',''),
	(3,'PreFilter',''),
	(4,'Dependencies',''),
	(5,'Xslt',''),
	(6,'FilterMacros',''),
	(7,'Edition','The document is in the development phase'),
	(8,'Publication','The document is waiting to be published'),
	(9,'Xedit','');

INSERT INTO `PipeTransitions` (`id`, `IdStatusFrom`, `IdStatusTo`, `IdPipeProcess`, `Cacheable`, `Name`, `Callback`)
VALUES
	(1,NULL,2,1,1,'ToRenderize','NodeToRenderizedContent'),
	(2,2,3,1,1,'FromRenderToPreFilter','PrefilterMacros'),
	(3,3,5,1,1,'FromPreFilterToDexT','Transformer'),
	(4,5,6,2,0,'FromToDexTToFinal','FilterMacros'),
	(5,NULL,6,3,0,'ToFinal','Common'),
	(6,7,8,4,0,'EditiontoPublication', '-'),
	(7,NULL,2,5,0,'ToRenderize','NodeToRenderizedContent'),
	(8,2,9,5,0,'FromRenderToXedit','Xedit'),
	(9,9,3,5,0,'FromXeditToPreFilter','PrefilterMacros');

INSERT INTO `Protocols` (`IdProtocol`, `DefaultPort`, `Description`, `UsePassword`)
VALUES
	('SSH',22,'Secure transfer protocol (ssh)',1),
	('LOCAL',NULL,'Local synchronization',0),
	('FTP',21,'FTP synchronization',1),
	('API', 80, 'Aplication Program Interface', 0);

INSERT INTO `RelGroupsNodes` (`IdRel`, `IdGroup`, `IdNode`, `IdRole`)
VALUES
	(1,101,2,NULL),
	(2,101,10000,NULL);

INSERT INTO `RelNodeTypeMetadata` (`idRel`, `idNodeType`, `force`)
VALUES
	(1,'5032',0),
	(2,'5039',0),
	(3,'5040',0),
	(4,'5041',0);

INSERT INTO `RelNodeTypeMimeType` (`idRelNodeTypeMimeType`, `idNodeType`, `extension`, `filter`)
VALUES
	(1,5001,'',''),
	(2,5002,'',''),
	(3,5003,'',''),
	(4,5004,'',''),
	(5,5005,'',''),
	(6,5006,'',''),
	(7,5007,'',''),
	(8,5008,'',''),
	(9,5009,'',''),
	(10,5010,'',''),
	(11,5011,'',''),
	(12,5012,'',''),
	(13,5013,'',''),
	(14,5014,'',''),
	(15,5015,'',''),
	(16,5016,'',''),
	(17,5017,'',''),
	(19,5018,';xml;','xml'),
	(20,5020,'',''),
	(21,5021,'',''),
	(22,5022,'',''),
	(23,5023,'',''),
	(24,5024,'',''),
	(25,5025,'',''),
	(26,5026,'',''),
	(27,5027,'',''),
	(28,5028,';css;','css'),
	(29,5029,'',''),
	(30,5030,'',''),
	(31,5031,'',''),
	(32,5032,'',''),
	(33,5033,'',''),
	(34,5034,'',''),
	(35,5035,'',''),
	(36,5036,'',''),
	(37,5037,'',''),
	(38,5038,'',''),
	(39,5039,';txt;js;json;coffee;css;scss;php;asp;aspx;',''),
	(40,5040,';jpeg;jpg;gif;png;ico;bmp;svg;','image'),
	(41,5041,'*',''),
	(42,5042,'',''),
	(43,5043,'',''),
	(47,5047,'',''),
	(48,5048,'',''),
	(49,5049,'',''),
	(50,5050,'',''),
	(53,5053,'',''),
	(54,5054,'',''),
	(55,5055,'',''),
	(56,5056,'',''),
	(57,5057,'',''),
	(58,5058,'',''),
	(59,5059,'',''),
	(60,5060,'',''),
	(61,5061,'',''),
	(62,5062,'',''),
	(63,5063,'',''),
	(64,5064,'',''),
	(65,5065,'',''),
	(66,5066,'',''),
	(68,5068,'',''),
	(69,5069,'',''),
	(70,5070,'',''),
	(71,5071,'',''),
	(72,5072,'',''),
	(73,5073,'',''),
	(74,5074,'',''),
	(75,5075,'',''),
	(76,5076,';ht;html;htm;xhtml;','html'),
	(79,5302,'',''),
	(80,5303,'',''),
	(82,5305,'',''),
	(84,5307,';jpeg;jpg;gif;png;','image'),
	(87,5310,'',''),
	(88,5320,'',''),
	(89,5083,'',''),
	(90,5084,'',''),
	(91,5085,'',''),
	(147,5077,';xsl;','ptd'),
	(151,5078,';xml;','pvd');

INSERT INTO `RelRolesActions` (`IdRel`, `IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`)
VALUES
	(1,201,6231,0,1,3),
	(2,201,6230,0,1,3),
	(3,201,6229,0,1,3),
	(4,201,6228,0,1,3),
	(5,201,6227,0,1,3),
	(6,201,7236,8,1,3),
	(7,201,7236,7,1,3),
	(8,201,7223,8,1,3),
	(9,201,7223,7,1,3),
	(10,201,7016,8,1,3),
	(11,201,7016,7,1,3),
	(12,201,6157,8,1,3),
	(13,201,6157,7,1,3),
	(14,201,6156,8,1,3),
	(15,201,6156,7,1,3),
	(16,201,6155,8,1,3),
	(17,201,6155,7,1,3),
	(18,201,6154,8,1,3),
	(19,201,6154,7,1,3),
	(20,201,6150,8,1,3),
	(21,201,6150,7,1,3),
	(22,201,7222,0,1,3),
	(23,201,6183,0,1,3),
	(24,201,6153,0,1,3),
	(25,201,6152,0,1,3),
	(26,201,6151,0,1,3),
	(27,201,7221,0,1,3),
	(28,201,6376,0,1,3),
	(29,201,6142,0,1,3),
	(30,201,6141,0,1,3),
	(31,201,6140,0,1,3),
	(32,201,6139,0,1,3),
	(33,201,7220,0,1,3),
	(34,201,6375,0,1,3),
	(35,201,6138,0,1,3),
	(36,201,6137,0,1,3),
	(37,201,8115,0,1,3),
	(38,201,8116,0,1,3),
	(39,201,8112,0,1,3),
	(40,201,7226,0,1,3),
	(41,201,6374,0,1,3),
	(42,201,7218,0,1,3),
	(43,201,6182,0,1,3),
	(44,201,6120,0,1,3),
	(45,201,6073,0,1,3),
	(46,201,7212,8,1,3),
	(47,201,7212,7,1,3),
	(48,201,6175,8,1,3),
	(49,201,6175,7,1,3),
	(50,201,6146,8,1,3),
	(51,201,6146,7,1,3),
	(52,201,6133,8,1,3),
	(53,201,6133,7,1,3),
	(54,201,6132,8,1,3),
	(55,201,6132,7,1,3),
	(56,201,6106,8,1,3),
	(57,201,6106,7,1,3),
	(58,201,6105,8,1,3),
	(59,201,6105,7,1,3),
	(60,201,6104,8,1,3),
	(61,201,6104,7,1,3),
	(62,201,6103,8,1,3),
	(63,201,6103,7,1,3),
	(64,201,7229,0,1,3),
	(65,201,7217,0,1,3),
	(66,201,6357,0,1,3),
	(67,201,6181,0,1,3),
	(68,201,6119,0,1,3),
	(69,201,6118,0,1,3),
	(70,201,6072,0,1,3),
	(71,201,6070,0,1,3),
	(72,201,7231,0,1,3),
	(73,201,7219,0,1,3),
	(74,201,6356,0,1,3),
	(75,201,6071,0,1,3),
	(76,201,6069,0,1,3),
	(77,201,7227,0,1,3),
	(78,201,6149,7,1,3),
	(79,201,6149,8,1,3),
	(80,201,6116,0,1,3),
	(81,201,6115,0,1,3),
	(82,201,6114,0,1,3),
	(83,201,6080,0,1,3),
	(84,201,6180,0,1,3),
	(85,201,6113,0,1,3),
	(86,201,6112,0,1,3),
	(87,201,6111,0,1,3),
	(88,201,6110,0,1,3),
	(89,201,8117,0,1,3),
	(90,201,6370,0,1,3),
	(91,201,7216,8,1,3),
	(92,201,7216,7,1,3),
	(93,201,6179,8,1,3),
	(94,201,6179,7,1,3),
	(95,201,6145,8,1,3),
	(96,201,6145,7,1,3),
	(97,201,6129,8,1,3),
	(98,201,6129,7,1,3),
	(99,201,6128,8,1,3),
	(100,201,6128,7,1,3),
	(101,201,6084,8,1,3),
	(102,201,6084,7,1,3),
	(103,201,6083,8,1,3),
	(104,201,6083,7,1,3),
	(105,201,6049,8,1,3),
	(106,201,6049,7,1,3),
	(107,201,7200,8,1,3),
	(108,201,7200,7,1,3),
	(109,201,6178,8,1,3),
	(110,201,6178,7,1,3),
	(111,201,6144,8,1,3),
	(112,201,6144,7,1,3),
	(113,201,6131,8,1,3),
	(114,201,6131,7,1,3),
	(115,201,6130,8,1,3),
	(116,201,6130,7,1,3),
	(117,201,6086,8,1,3),
	(118,201,6086,7,1,3),
	(119,201,6085,8,1,3),
	(120,201,6085,7,1,3),
	(121,201,6052,8,1,3),
	(122,201,6052,7,1,3),
	(123,201,6050,8,1,3),
	(124,201,6050,7,1,3),
	(125,201,7215,8,1,3),
	(126,201,7215,7,1,3),
	(127,201,6177,8,1,3),
	(128,201,6177,7,1,3),
	(129,201,6148,8,1,3),
	(130,201,6148,7,1,3),
	(131,201,6127,8,1,3),
	(132,201,6127,7,1,3),
	(133,201,6126,8,1,3),
	(134,201,6126,7,1,3),
	(135,201,6094,8,1,3),
	(136,201,6094,7,1,3),
	(137,201,6088,8,1,3),
	(138,201,6088,7,1,3),
	(139,201,6087,8,1,3),
	(140,201,6087,7,1,3),
	(141,201,6051,8,1,3),
	(142,201,6051,7,1,3),
	(143,201,6121,0,1,3),
	(144,201,6082,0,1,3),
	(145,201,7301,0,1,3),
	(146,201,6102,0,1,3),
	(147,201,6097,0,1,3),
	(148,201,6107,0,1,3),
	(149,201,6095,0,1,3),
	(150,201,6047,0,1,3),
	(151,201,6048,0,1,3),
	(152,201,7311,0,1,3),
	(153,201,7213,0,1,3),
	(154,201,6176,0,1,3),
	(155,201,6063,0,1,3),
	(156,201,6064,0,1,3),
	(157,201,6045,0,1,3),
	(158,201,8111,0,1,3),
	(159,201,7211,0,1,3),
	(160,201,6367,0,1,3),
	(161,201,6345,0,1,3),
	(162,201,8110,8,1,3),
	(163,201,8110,7,1,3),
	(164,201,8104,8,1,3),
	(165,201,8104,7,1,3),
	(166,201,7210,8,1,3),
	(167,201,7210,7,1,3),
	(168,201,6366,8,1,3),
	(169,201,6366,7,1,3),
	(170,201,6349,8,1,3),
	(171,201,6349,7,1,3),
	(172,201,6041,8,1,3),
	(173,201,6041,7,1,3),
	(174,201,6032,8,1,3),
	(175,201,6032,7,1,3),
	(176,201,6023,8,1,3),
	(177,201,6023,7,1,3),
	(178,201,8109,8,1,3),
	(179,201,8109,7,1,3),
	(180,201,8103,8,1,3),
	(181,201,8103,7,1,3),
	(182,201,7209,8,1,3),
	(183,201,7209,7,1,3),
	(184,201,6365,8,1,3),
	(185,201,6365,7,1,3),
	(186,201,6348,8,1,3),
	(187,201,6348,7,1,3),
	(188,201,6022,8,1,3),
	(189,201,6022,7,1,3),
	(190,201,8114,8,1,3),
	(191,201,8114,7,1,3),
	(192,201,8106,8,1,3),
	(193,201,8106,7,1,3),
	(194,201,7208,8,1,3),
	(195,201,7208,7,1,3),
	(196,201,6355,8,1,3),
	(197,201,6355,7,1,3),
	(198,201,6347,8,1,3),
	(199,201,6347,7,1,3),
	(200,201,6174,8,1,3),
	(201,201,6174,7,1,3),
	(202,201,6040,8,1,3),
	(203,201,6040,7,1,3),
	(204,201,6031,8,1,3),
	(205,201,6031,7,1,3),
	(206,201,6021,8,1,3),
	(207,201,6021,7,1,3),
	(208,201,8113,8,1,3),
	(209,201,8113,7,1,3),
	(210,201,8105,8,1,3),
	(211,201,8105,7,1,3),
	(212,201,7207,8,1,3),
	(213,201,7207,7,1,3),
	(214,201,6354,8,1,3),
	(215,201,6354,7,1,3),
	(216,201,6346,8,1,3),
	(217,201,6346,7,1,3),
	(218,201,6020,8,1,3),
	(219,201,6020,7,1,3),
	(220,201,7206,0,1,3),
	(221,201,6364,0,1,3),
	(222,201,6351,0,1,3),
	(223,201,6173,0,1,3),
	(224,201,6039,0,1,3),
	(225,201,6030,0,1,3),
	(226,201,6019,0,1,3),
	(227,201,7205,0,1,3),
	(228,201,6363,0,1,3),
	(229,201,6236,0,1,3),
	(230,201,6018,0,1,3),
	(231,201,7310,0,1,3),
	(232,201,7204,0,1,3),
	(233,201,6352,0,1,3),
	(234,201,6124,0,1,3),
	(235,201,6044,0,1,3),
	(236,201,6043,0,1,3),
	(237,201,8108,8,1,3),
	(238,201,8108,7,1,3),
	(239,201,8102,8,1,3),
	(240,201,8102,7,1,3),
	(241,201,7201,8,1,3),
	(242,201,7201,7,1,3),
	(243,201,6361,8,1,3),
	(244,201,6361,7,1,3),
	(245,201,6344,8,1,3),
	(246,201,6344,7,1,3),
	(247,201,6172,8,1,3),
	(248,201,6172,7,1,3),
	(249,201,6037,8,1,3),
	(250,201,6037,7,1,3),
	(251,201,6028,8,1,3),
	(252,201,6028,7,1,3),
	(253,201,6016,8,1,3),
	(254,201,6016,7,1,3),
	(255,201,8107,8,1,3),
	(256,201,8107,7,1,3),
	(257,201,8101,8,1,3),
	(258,201,8101,7,1,3),
	(259,201,7202,8,1,3),
	(260,201,7202,7,1,3),
	(261,201,6360,8,1,3),
	(262,201,6360,7,1,3),
	(263,201,6343,8,1,3),
	(264,201,6343,7,1,3),
	(265,201,6015,8,1,3),
	(266,201,6015,7,1,3),
	(267,201,7309,8,1,3),
	(268,201,7309,7,1,3),
	(269,201,7225,8,1,3),
	(270,201,7225,7,1,3),
	(271,201,6383,8,1,3),
	(272,201,6383,7,1,3),
	(273,201,6205,8,1,3),
	(274,201,6205,7,1,3),
	(275,201,6204,8,1,3),
	(276,201,6204,7,1,3),
	(277,201,6184,8,1,3),
	(278,201,6184,7,1,3),
	(279,201,6171,8,1,3),
	(280,201,6171,7,1,3),
	(281,201,6074,8,1,3),
	(282,201,6074,7,1,3),
	(283,201,6036,8,1,3),
	(284,201,6036,7,1,3),
	(285,201,6025,8,1,3),
	(286,201,6025,7,1,3),
	(287,201,6014,8,1,3),
	(288,201,6014,7,1,3),
	(289,201,7308,8,1,3),
	(290,201,7308,7,1,3),
	(291,201,7203,8,1,3),
	(292,201,7203,7,1,3),
	(293,201,6384,8,1,3),
	(294,201,6384,7,1,3),
	(295,201,6202,8,1,3),
	(296,201,6202,7,1,3),
	(297,201,6170,8,1,3),
	(298,201,6170,7,1,3),
	(299,201,6125,8,1,3),
	(300,201,6125,7,1,3),
	(301,201,6123,8,1,3),
	(302,201,6123,7,1,3),
	(303,201,6035,8,1,3),
	(304,201,6035,7,1,3),
	(305,201,6027,8,1,3),
	(306,201,6027,7,1,3),
	(307,201,6013,8,1,3),
	(308,201,6013,7,1,3),
	(309,201,7312,8,1,3),
	(310,201,7312,7,1,3),
	(311,201,6385,8,1,3),
	(312,201,6385,7,1,3),
	(313,201,6143,8,1,3),
	(314,201,6143,7,1,3),
	(315,201,6147,7,1,3),
	(316,201,6147,8,1,3),
	(317,201,6136,8,1,3),
	(318,201,6136,7,1,3),
	(319,201,6135,8,1,3),
	(320,201,6135,7,1,3),
	(321,201,6134,8,1,3),
	(322,201,6134,7,1,3),
	(323,201,6100,8,1,3),
	(324,201,6100,7,1,3),
	(325,201,6099,8,1,3),
	(326,201,6099,7,1,3),
	(327,201,6098,8,1,3),
	(328,201,6098,7,1,3),
	(329,201,6065,8,1,3),
	(330,201,6065,7,1,3),
	(331,201,6011,0,1,3),
	(332,201,7307,0,1,3),
	(333,201,6600,0,1,3),
	(334,201,6122,0,1,3),
	(335,201,6034,0,1,3),
	(336,201,6026,0,1,3),
	(337,201,6012,0,1,3),
	(338,201,6101,0,1,3),
	(339,201,6096,0,1,3),
	(340,201,6108,0,1,3),
	(341,201,6109,0,1,3),
	(342,201,6081,0,1,3),
	(343,201,6005,0,1,3),
	(344,201,6004,0,1,3),
	(345,201,6003,0,1,3),
	(346,201,6002,0,1,3),
	(347,201,6067,0,1,3),
	(348,201,6008,0,1,3),
	(349,201,6009,0,1,3),
	(350,201,6010,0,1,3),
	(351,201,6006,0,1,3),
	(352,201,6001,0,1,3),
	(353,201,8122,0,1,3),
	(354,201,8123,0,1,3),
	(355,201,8124,0,1,3),
	(356,201,8125,0,1,3),
	(357,201,8126,0,1,3),
	(358,201,8127,0,1,3),
	(359,201,8128,0,1,3),
	(360,201,8129,0,1,3),
	(361,202,6065,7,1,3),
	(362,202,6098,7,1,3),
	(363,202,6099,8,1,3),
	(364,202,6100,7,1,3),
	(365,202,6135,7,1,3),
	(366,202,6136,7,1,3),
	(367,202,6143,7,1,3),
	(368,202,6385,7,1,3),
	(369,202,6384,7,1,3),
	(370,202,6383,7,1,3),
	(371,202,6360,7,1,3),
	(372,202,8107,7,1,3),
	(373,202,6361,7,1,3),
	(374,202,8108,7,1,3),
	(375,202,6352,0,1,3),
	(376,202,6363,0,1,3),
	(377,202,6364,0,1,3),
	(378,202,6354,7,1,3),
	(379,202,8113,7,1,3),
	(380,202,6355,7,1,3),
	(381,202,8114,7,1,3),
	(382,202,6365,7,1,3),
	(383,202,8109,7,1,3),
	(384,202,6366,7,1,3),
	(385,202,8110,7,1,3),
	(386,202,6367,0,1,3),
	(387,202,8111,0,1,3),
	(388,202,6051,7,1,3),
	(389,202,6094,7,1,3),
	(390,202,6126,7,1,3),
	(391,202,6127,8,1,3),
	(392,202,6148,7,1,3),
	(393,202,6050,7,1,3),
	(394,202,6052,7,1,3),
	(395,202,6130,7,1,3),
	(396,202,6131,8,1,3),
	(397,202,6144,7,1,3),
	(398,202,6049,7,1,3),
	(399,202,6128,7,1,3),
	(400,202,6129,8,1,3),
	(401,202,6145,7,1,3),
	(402,202,6370,0,1,3),
	(403,202,6112,0,1,3),
	(404,202,6147,0,1,3),
	(405,202,6115,0,1,3),
	(406,202,6149,0,1,3),
	(407,202,6356,0,1,3),
	(408,202,7231,0,1,3),
	(409,202,6357,0,1,3),
	(410,202,7229,0,1,3),
	(411,202,6104,7,1,3),
	(412,202,6132,7,1,3),
	(413,202,6133,8,1,3),
	(414,202,6146,7,1,3),
	(415,202,6374,0,1,3),
	(416,202,8112,0,1,3),
	(417,202,6375,0,1,3),
	(418,202,6150,7,1,3),
	(419,202,6154,7,1,3),
	(420,202,6156,7,1,3),
	(421,202,6157,7,1,3),
	(422,202,7236,7,1,3),
	(423,202,6227,0,1,3),
	(424,202,6228,0,1,3),
	(425,202,6229,0,1,3),
	(426,202,6231,0,1,3),
	(427,203,6098,8,1,3),
	(428,203,6098,7,1,3),
	(429,203,6099,7,1,3),
	(430,203,6100,8,1,3),
	(431,203,6135,7,1,3),
	(432,203,6135,8,1,3),
	(433,203,6143,8,1,3),
	(434,203,6385,8,1,3),
	(435,203,6384,8,1,3),
	(436,203,6204,8,1,3),
	(437,203,6205,8,1,3),
	(438,203,6383,8,1,3),
	(439,203,6360,8,1,3),
	(440,203,8101,7,1,3),
	(441,203,8101,8,1,3),
	(442,203,8107,8,1,3),
	(443,203,6361,8,1,3),
	(444,203,8102,7,1,3),
	(445,203,8102,8,1,3),
	(446,203,8108,8,1,3),
	(447,203,6352,0,1,3),
	(448,203,6363,0,1,3),
	(449,203,6364,0,1,3),
	(450,203,6354,8,1,3),
	(451,203,8105,7,1,3),
	(452,203,8105,8,1,3),
	(453,203,8113,8,1,3),
	(454,203,6355,8,1,3),
	(455,203,8106,7,1,3),
	(456,203,8106,8,1,3),
	(457,203,8114,8,1,3),
	(458,203,6365,8,1,3),
	(459,203,8103,7,1,3),
	(460,203,8103,8,1,3),
	(461,203,8109,8,1,3),
	(462,203,6366,8,1,3),
	(463,203,8104,7,1,3),
	(464,203,8104,8,1,3),
	(465,203,8110,8,1,3),
	(466,203,6367,0,1,3),
	(467,203,8111,0,1,3),
	(468,203,6051,8,1,3),
	(469,203,6126,8,1,3),
	(470,203,6127,7,1,3),
	(471,203,6148,8,1,3),
	(472,203,6050,8,1,3),
	(473,203,6052,8,1,3),
	(474,203,6130,8,1,3),
	(475,203,6131,7,1,3),
	(476,203,6144,8,1,3),
	(477,203,6049,8,1,3),
	(478,203,6128,8,1,3),
	(479,203,6129,7,1,3),
	(480,203,6145,8,1,3),
	(481,203,6370,0,1,3),
	(482,203,6112,0,1,3),
	(483,203,6147,0,1,3),
	(484,203,6115,0,1,3),
	(485,203,6149,0,1,3),
	(486,203,6356,0,1,3),
	(487,203,7231,0,1,3),
	(488,203,6357,0,1,3),
	(489,203,7229,0,1,3),
	(490,203,6104,8,1,3),
	(491,203,6132,8,1,3),
	(492,203,6133,7,1,3),
	(493,203,6146,8,1,3),
	(494,203,6374,0,1,3),
	(495,203,8112,0,1,3),
	(496,203,6375,0,1,3),
	(497,203,6376,0,1,3),
	(498,203,6150,8,1,3),
	(499,203,6156,8,1,3),
	(500,203,7016,8,1,3),
	(501,203,7236,8,1,3),
	(502,203,6228,0,1,3),
	(503,203,6231,0,1,3),
	(504,204,6012,0,1,3),
	(505,204,6026,0,1,3),
	(506,204,6034,0,1,3),
	(507,204,6122,0,1,3),
	(508,204,6600,0,1,3),
	(509,204,7307,0,1,3),
	(510,204,6011,0,1,3),
	(511,204,6065,7,1,3),
	(512,204,6065,8,1,3),
	(513,204,6098,7,1,3),
	(514,204,6098,8,1,3),
	(515,204,6099,7,1,3),
	(516,204,6099,8,1,3),
	(517,204,6100,7,1,3),
	(518,204,6100,8,1,3),
	(519,204,6134,7,1,3),
	(520,204,6134,8,1,3),
	(521,204,6135,7,1,3),
	(522,204,6135,8,1,3),
	(523,204,6136,7,1,3),
	(524,204,6136,8,1,3),
	(525,204,6143,7,1,3),
	(526,204,6143,8,1,3),
	(527,204,6385,7,1,3),
	(528,204,6385,8,1,3),
	(529,204,7312,7,1,3),
	(530,204,7312,8,1,3),
	(531,204,6013,7,1,3),
	(532,204,6013,8,1,3),
	(533,204,6027,7,1,3),
	(534,204,6027,8,1,3),
	(535,204,6035,7,1,3),
	(536,204,6035,8,1,3),
	(537,204,6123,7,1,3),
	(538,204,6123,8,1,3),
	(539,204,6125,7,1,3),
	(540,204,6125,8,1,3),
	(541,204,6170,7,1,3),
	(542,204,6170,8,1,3),
	(543,204,6202,7,1,3),
	(544,204,6202,8,1,3),
	(545,204,6384,7,1,3),
	(546,204,6384,8,1,3),
	(547,204,7203,7,1,3),
	(548,204,7203,8,1,3),
	(549,204,7308,7,1,3),
	(550,204,7308,8,1,3),
	(551,204,6014,7,1,3),
	(552,204,6014,8,1,3),
	(553,204,6025,7,1,3),
	(554,204,6025,8,1,3),
	(555,204,6036,7,1,3),
	(556,204,6036,8,1,3),
	(557,204,6074,7,1,3),
	(558,204,6074,8,1,3),
	(559,204,6171,7,1,3),
	(560,204,6171,8,1,3),
	(561,204,6184,7,1,3),
	(562,204,6184,8,1,3),
	(563,204,6204,7,1,3),
	(564,204,6204,8,1,3),
	(565,204,6205,7,1,3),
	(566,204,6205,8,1,3),
	(567,204,6383,7,1,3),
	(568,204,6383,8,1,3),
	(569,204,7225,7,1,3),
	(570,204,7225,8,1,3),
	(571,204,7309,7,1,3),
	(572,204,7309,8,1,3),
	(573,204,6015,7,1,3),
	(574,204,6015,8,1,3),
	(575,204,6343,7,1,3),
	(576,204,6343,8,1,3),
	(577,204,6360,7,1,3),
	(578,204,6360,8,1,3),
	(579,204,7202,7,1,3),
	(580,204,7202,8,1,3),
	(581,204,8101,7,1,3),
	(582,204,8101,8,1,3),
	(583,204,8107,7,1,3),
	(584,204,8107,8,1,3),
	(585,204,6016,7,1,3),
	(586,204,6016,8,1,3),
	(587,204,6028,7,1,3),
	(588,204,6028,8,1,3),
	(589,204,6037,7,1,3),
	(590,204,6037,8,1,3),
	(591,204,6172,7,1,3),
	(592,204,6172,8,1,3),
	(593,204,6344,7,1,3),
	(594,204,6344,8,1,3),
	(595,204,6361,7,1,3),
	(596,204,6361,8,1,3),
	(597,204,7201,7,1,3),
	(598,204,7201,8,1,3),
	(599,204,8102,7,1,3),
	(600,204,8102,8,1,3),
	(601,204,8108,7,1,3),
	(602,204,8108,8,1,3),
	(603,204,6044,0,1,3),
	(604,204,6124,0,1,3),
	(605,204,6352,0,1,3),
	(606,204,7204,0,1,3),
	(607,204,7310,0,1,3),
	(608,204,6018,0,1,3),
	(609,204,6236,0,1,3),
	(610,204,6363,0,1,3),
	(611,204,7205,0,1,3),
	(612,204,6019,0,1,3),
	(613,204,6030,0,1,3),
	(614,204,6039,0,1,3),
	(615,204,6173,0,1,3),
	(616,204,6351,0,1,3),
	(617,204,6364,0,1,3),
	(618,204,7206,0,1,3),
	(619,204,6020,7,1,3),
	(620,204,6020,8,1,3),
	(621,204,6346,7,1,3),
	(622,204,6346,8,1,3),
	(623,204,6354,7,1,3),
	(624,204,6354,8,1,3),
	(625,204,7207,7,1,3),
	(626,204,7207,8,1,3),
	(627,204,8105,7,1,3),
	(628,204,8105,8,1,3),
	(629,204,8113,7,1,3),
	(630,204,8113,8,1,3),
	(631,204,6021,7,1,3),
	(632,204,6021,8,1,3),
	(633,204,6031,7,1,3),
	(634,204,6031,8,1,3),
	(635,204,6040,7,1,3),
	(636,204,6040,8,1,3),
	(637,204,6174,7,1,3),
	(638,204,6174,8,1,3),
	(639,204,6347,7,1,3),
	(640,204,6347,8,1,3),
	(641,204,6355,7,1,3),
	(642,204,6355,8,1,3),
	(643,204,7208,7,1,3),
	(644,204,7208,8,1,3),
	(645,204,8106,7,1,3),
	(646,204,8106,8,1,3),
	(647,204,8114,7,1,3),
	(648,204,8114,8,1,3),
	(649,204,6022,7,1,3),
	(650,204,6022,8,1,3),
	(651,204,6348,7,1,3),
	(652,204,6348,8,1,3),
	(653,204,6365,7,1,3),
	(654,204,6365,8,1,3),
	(655,204,7209,7,1,3),
	(656,204,7209,8,1,3),
	(657,204,8103,7,1,3),
	(658,204,8103,8,1,3),
	(659,204,8109,7,1,3),
	(660,204,8109,8,1,3),
	(661,204,6023,7,1,3),
	(662,204,6023,8,1,3),
	(663,204,6032,7,1,3),
	(664,204,6032,8,1,3),
	(665,204,6041,7,1,3),
	(666,204,6041,8,1,3),
	(667,204,6349,7,1,3),
	(668,204,6349,8,1,3),
	(669,204,6366,7,1,3),
	(670,204,6366,8,1,3),
	(671,204,7210,7,1,3),
	(672,204,7210,8,1,3),
	(673,204,8104,7,1,3),
	(674,204,8104,8,1,3),
	(675,204,8110,7,1,3),
	(676,204,8110,8,1,3),
	(677,204,6345,0,1,3),
	(678,204,6367,0,1,3),
	(679,204,7211,0,1,3),
	(680,204,8111,0,1,3),
	(681,204,6045,0,1,3),
	(682,204,6064,0,1,3),
	(683,204,6063,0,1,3),
	(684,204,6176,0,1,3),
	(685,204,7213,0,1,3),
	(686,204,7311,0,1,3),
	(687,204,6051,7,1,3),
	(688,204,6051,8,1,3),
	(689,204,6087,7,1,3),
	(690,204,6087,8,1,3),
	(691,204,6088,7,1,3),
	(692,204,6088,8,1,3),
	(693,204,6094,7,1,3),
	(694,204,6094,8,1,3),
	(695,204,6126,7,1,3),
	(696,204,6126,8,1,3),
	(697,204,6127,7,1,3),
	(698,204,6127,8,1,3),
	(699,204,6148,7,1,3),
	(700,204,6148,8,1,3),
	(701,204,6177,7,1,3),
	(702,204,6177,8,1,3),
	(703,204,6191,7,1,3),
	(704,204,6191,8,1,3),
	(705,204,7215,7,1,3),
	(706,204,7215,8,1,3),
	(707,204,6050,7,1,3),
	(708,204,6050,8,1,3),
	(709,204,6052,7,1,3),
	(710,204,6052,8,1,3),
	(711,204,6085,7,1,3),
	(712,204,6085,8,1,3),
	(713,204,6086,7,1,3),
	(714,204,6086,8,1,3),
	(715,204,6130,7,1,3),
	(716,204,6130,8,1,3),
	(717,204,6131,7,1,3),
	(718,204,6131,8,1,3),
	(719,204,6144,7,1,3),
	(720,204,6144,8,1,3),
	(721,204,6168,7,1,3),
	(722,204,6168,8,1,3),
	(723,204,6178,7,1,3),
	(724,204,6178,8,1,3),
	(725,204,7200,7,1,3),
	(726,204,7200,8,1,3),
	(727,204,6049,7,1,3),
	(728,204,6049,8,1,3),
	(729,204,6083,7,1,3),
	(730,204,6083,8,1,3),
	(731,204,6084,7,1,3),
	(732,204,6084,8,1,3),
	(733,204,6128,7,1,3),
	(734,204,6128,8,1,3),
	(735,204,6129,7,1,3),
	(736,204,6129,8,1,3),
	(737,204,6145,7,1,3),
	(738,204,6145,8,1,3),
	(739,204,6179,7,1,3),
	(740,204,6179,8,1,3),
	(741,204,6190,7,1,3),
	(742,204,6190,8,1,3),
	(743,204,7216,7,1,3),
	(744,204,7216,8,1,3),
	(745,204,6370,0,1,3),
	(746,204,6110,0,1,3),
	(747,204,8117,0,1,3),
	(748,204,6111,0,1,3),
	(749,204,6112,0,1,3),
	(750,204,6113,0,1,3),
	(751,204,6147,0,1,3),
	(752,204,6180,0,1,3),
	(753,204,6080,0,1,3),
	(754,204,6114,0,1,3),
	(755,204,6115,0,1,3),
	(756,204,6116,0,1,3),
	(757,204,6149,0,1,3),
	(758,204,7227,0,1,3),
	(759,204,6069,0,1,3),
	(760,204,6071,0,1,3),
	(761,204,6356,0,1,3),
	(762,204,7219,0,1,3),
	(763,204,7231,0,1,3),
	(764,204,6070,0,1,3),
	(765,204,6072,0,1,3),
	(766,204,6118,0,1,3),
	(767,204,6119,0,1,3),
	(768,204,6181,0,1,3),
	(769,204,6357,0,1,3),
	(770,204,7217,0,1,3),
	(771,204,7229,0,1,3),
	(772,204,6103,7,1,3),
	(773,204,6103,8,1,3),
	(774,204,6104,7,1,3),
	(775,204,6104,8,1,3),
	(776,204,6105,7,1,3),
	(777,204,6105,8,1,3),
	(778,204,6106,7,1,3),
	(779,204,6106,8,1,3),
	(780,204,6132,7,1,3),
	(781,204,6132,8,1,3),
	(782,204,6133,7,1,3),
	(783,204,6133,8,1,3),
	(784,204,6146,7,1,3),
	(785,204,6146,8,1,3),
	(786,204,6175,7,1,3),
	(787,204,6175,8,1,3),
	(788,204,7212,7,1,3),
	(789,204,7212,8,1,3),
	(790,204,6073,0,1,3),
	(791,204,6120,0,1,3),
	(792,204,6182,0,1,3),
	(793,204,7218,0,1,3),
	(794,204,6374,0,1,3),
	(795,204,7226,0,1,3),
	(796,204,8112,0,1,3),
	(797,204,8115,0,1,3),
	(798,204,6137,0,1,3),
	(799,204,6138,0,1,3),
	(800,204,6375,0,1,3),
	(801,204,7220,0,1,3),
	(802,204,6139,0,1,3),
	(803,204,6140,0,1,3),
	(804,204,6141,0,1,3),
	(805,204,6142,0,1,3),
	(806,204,6376,0,1,3),
	(807,204,7221,0,1,3),
	(808,204,6151,0,1,3),
	(809,204,6152,0,1,3),
	(810,204,6153,0,1,3),
	(811,204,6183,0,1,3),
	(812,204,7222,0,1,3),
	(813,204,6150,7,1,3),
	(814,204,6150,8,1,3),
	(815,204,6154,7,1,3),
	(816,204,6154,8,1,3),
	(817,204,6155,7,1,3),
	(818,204,6155,8,1,3),
	(819,204,6156,7,1,3),
	(820,204,6156,8,1,3),
	(821,204,6157,7,1,3),
	(822,204,6157,8,1,3),
	(823,204,7016,7,1,3),
	(824,204,7016,8,1,3),
	(825,204,7223,7,1,3),
	(826,204,7223,8,1,3),
	(827,204,7236,7,1,3),
	(828,204,7236,8,1,3),
	(829,204,6227,0,1,3),
	(830,204,6228,0,1,3),
	(831,204,6229,0,1,3),
	(832,204,6230,0,1,3),
	(833,204,6231,0,1,3),
	(834,204,6232,0,1,3),
	(835,204,6233,0,1,3),
	(836,204,7224,0,1,3),
	(837,204,7305,7,1,3),
	(838,204,7305,8,1,3),
	(839,204,7306,7,1,3),
	(840,204,7306,8,1,3),
	(841,204,7318,0,1,3),
	(842,204,7319,0,1,3),
	(843,204,7321,0,1,3),
	(844,201,6232,0,1,3),
	(845,201,6233,0,1,3),
	(846,201,7224,0,1,3),
	(847,201,7305,7,1,3),
	(848,201,7305,8,1,3),
	(849,201,7306,7,1,3),
	(850,201,7306,8,1,3),
	(851,201,7318,0,1,3),
	(852,201,7319,0,1,3),
	(853,201,7321,0,1,3),
	(854,201,6046,0,1,3),
	(855,201,7317,0,1,3),
	(856,201,7305,0,1,3),
	(857,201,7306,0,1,3),
	(858,201,8118,0,1,3),
	(859,204,8118,0,1,3),
	(860,201,8119,0,1,3),
	(861,204,8119,0,1,3),
	(862,201,8119,0,1,3),
	(863,204,8119,0,1,3),
	(864,201,8120,0,1,3),
	(865,204,8120,0,1,3),
	(866,201,8121,0,1,3),
	(867,204,8121,0,1,3),
	(868,201,6007,8,1,3),
	(869,201,6007,7,1,3),
	(870,201,6206,0,1,3),
	(871,201,6206,8,1,3),
	(872,201,6206,7,1,3),
	(873,201,6207,0,1,3),
	(874,201,6207,8,1,3),
	(875,201,6207,7,1,3),
	(876,201,6208,0,1,3),
	(877,201,6208,8,1,3),
	(878,201,6208,7,1,3),
	(879,201,6209,0,1,3),
	(880,201,6209,8,1,3),
	(881,201,6209,7,1,3),
	(882,201,6210,0,1,3),
	(883,201,6210,8,1,3),
	(884,201,6210,7,1,3),
	(885,201,8132,0,1,3),
	(886,201,8133,0,1,3),
	(887,201,8134,0,1,3),
	(888,201,8135,0,1,3),
	(889,201,8136,0,1,3),
	(890,201,8137,0,1,3),
	(891,202,8137,0,1,3),
	(892,203,8137,0,1,3),
	(893,204,8137,0,1,3),
	(894,201,7230,0,1,3),
	(895,202,7230,0,1,3),
	(896,203,7230,0,1,3),
	(897,204,7230,0,1,3),
	(898,201,9500,0,1,3),
	(899,201,9500,7,1,3);

INSERT INTO `RelRolesPermissions` (`IdRel`, `IdRole`, `IdPermission`)
VALUES
	(320,201,1004),
	(319,201,1003),
	(318,201,1002),
	(317,201,1001),
	(302,202,1001),
	(303,202,1007),
	(304,203,1001),
	(305,203,1004),
	(306,203,1007),
	(307,203,1008),
	(308,203,1009),
	(309,204,1001),
	(310,204,1002),
	(311,204,1004),
	(312,204,1006),
	(313,204,1007),
	(314,204,1008),
	(315,204,1009),
	(316,204,1010),
	(321,201,1006),
	(322,201,1007),
	(323,201,1008),
	(324,201,1009),
	(325,201,1010);

INSERT INTO `RelRolesStates` (`IdRel`, `IdRole`, `IdState`)
VALUES
	(1,201,7),
	(2,201,8),
	(3,202,7),
	(4,203,7),
	(5,203,8),
	(6,204,7),
	(7,204,8);

INSERT INTO `RelUsersGroups` (`IdRel`, `IdUser`, `IdGroup`, `IdRole`)
VALUES
	(1,301,101,201);

INSERT INTO `Roles` (`IdRole`, `Name`, `Icon`, `Description`)
VALUES
	(201,'Administrator','','Main administrator'),
	(202,'Editor','','Editor user'),
	(203,'Publisher','','Publisher user'),
	(204,'Expert',NULL,'Expert user');

INSERT INTO `SectionTypes` (`idSectionType`, `sectionType`, `idNodeType`, `module`)
VALUES
	(1,'Normal',5015,NULL);

INSERT INTO `States` (`IdState`, `Name`, `Description`, `IsRoot`, `IsEnd`, `NextState`)
VALUES
	(7,'Edition','Document is under development',1,0,8),
	(8,'Publication','Document is waiting for being published',0,1,7);

INSERT INTO `Users` (`IdUser`, `Login`, `Pass`, `Name`, `Email`, `Locale`, `LastLogin`, `NumAccess`)
VALUES
	(301,'ximdex','$1$qSGCbgO1$yqxywUuVs1w5pd7capSQV.','Administrador de ximdex','notify@ximdex.org',NULL,0,0);

-- SQL DATA FOR HTML DOCUMENTS

-- Pipeline (5)
INSERT INTO `Pipelines` (`id`, `Pipeline`) VALUES (5, 'PublishHTMLDoc');

INSERT INTO `PipeTransitions` (`id`, `IdStatusFrom`, `IdStatusTo`, `IdPipeProcess`, `Cacheable`, `Name`, `Callback`) VALUES 
    ('10', NULL, '3', '6', '1', 'PrepareHTML', 'PrepareHTML'), 
    ('11', '3', '6', '7', '0', 'PublishHTML', 'FilterMacros');

INSERT INTO `PipeProcess` (`id`, `IdTransitionFrom`, `IdTransitionTo`, `IdPipeline`, `Name`) VALUES 
    ('6', NULL, '10', '5', 'HTMLToPrepared'), 
    ('7', '10', '11', '5', 'HTMLToPublished');

-- HTMLlayoutsFolder (5105)

INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`
    , `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `IsHidden`, `CanDenyDeletion`, `isGenerator`
    , `IsEnriching`, `System`, `Module`) VALUES 
    (5105, 'HTMLlayoutsFolder', 'FolderNode', 'folder_template_view', 'Folder of HTML layouts', 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL);
    
INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES
    (7404, 5105, 'Add layouts', 'fileupload_common_multiple', 'add_template_pvd.png', 'Add a set of layouts to the server', 9, NULL, 0
        , 'type=layout', 0),
    (7405, 5105, 'Add a new empty layout', 'newemptynode', 'add_file_common.png', 'Create a new empty HMTL layout file', 9, NULL, 0, '', 0),
    (7406, 5105, 'Copy', 'copy', 'copiar_carpeta_ximdoc.png', 'Copy a layouts folder to another destination', 31, NULL, 0, '', 0),
    (7407, 5105, 'Download all layout files', 'filedownload_multiple', 'download_template_view.png', 'Download all layouts', 80, NULL, 0, '', 1),
    (7408, 5105, 'Semantic Tags', 'setmetadata', 'change_next_state.png', 'Managing semantic tags related to the current node', 999
        , 'ximTAGS', 0, NULL, 0);

INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7404, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7405, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7406, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7407, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7408, 0, 1, 3);

INSERT INTO `NodeConstructors` (`IdNodeType`, `IdAction`) VALUES (5105, 6011);
INSERT INTO `NodeConstructors` (`IdNodeType`, `IdAction`) VALUES (5105, 6012);
INSERT INTO `NodeConstructors` (`IdNodeType`, `IdAction`) VALUES (5105, 6013);
INSERT INTO `NodeConstructors` (`IdNodeType`, `IdAction`) VALUES (5105, 6014);

INSERT INTO `NodetypeModes` (`IdNodeType`, `Mode`) VALUES
    (5105, 'C'),
    (5105, 'R'),
    (5105, 'U'),
    (5105, 'D');

INSERT INTO `RelNodeTypeMimeType` (`idNodeType`, `extension`, `filter`) VALUES (5105, '', '');

INSERT INTO `NodeAllowedContents` (`IdNodeType`, `NodeType`) VALUES (5013, 5105);
INSERT INTO `NodeAllowedContents` (`IdNodeType`, `NodeType`) VALUES (5014, 5105);
INSERT INTO `NodeAllowedContents` (`IdNodeType`, `NodeType`) VALUES (5015, 5105);


INSERT INTO `NodeDefaultContents` (`IdNodeType`, `NodeType`, `Name`) VALUES (5013, 5105, 'layouts');
INSERT INTO `NodeDefaultContents` (`IdNodeType`, `NodeType`, `Name`) VALUES (5014, 5105, 'layouts');
INSERT INTO `NodeDefaultContents` (`IdNodeType`, `NodeType`, `Name`) VALUES (5015, 5105, 'layouts');

INSERT INTO `Config` (`ConfigKey`, `ConfigValue`) VALUES ('HTMLLayoutsDirName', 'layouts');

-- HTMLComponentsFolder (5101)

INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`
    , `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `IsHidden`, `CanDenyDeletion`, `isGenerator`
    , `IsEnriching`, `System`, `Module`) VALUES
    (5101, 'HTMLComponentsFolder', 'FolderNode', 'folder_template_view', 'Folder of HTML components', 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL);

INSERT INTO `NodetypeModes` (`IdNodeType`, `Mode`) VALUES
    (5101, 'C'),
    (5101, 'R'),
    (5101, 'U'),
    (5101, 'D');

INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES
    (7413, 5101, 'Semantic Tags', 'setmetadata', 'change_next_state.png', 'Managing semantic tags related to the current node.', 999
        , 'ximTAGS', 0, NULL, 0),
    (7414, 5101, 'Copy', 'copy', 'copiar_carpeta_ximdoc.png', 'Copy a HTML components folder to another destination', 31, NULL, 0, '', 0),
    (7415, 5101, 'Download all components', 'filedownload_multiple', 'download_template_view.png', 'Download all HTML components files', 80
            , NULL, 0, '', 1),
    (7416, 5101, 'Upload components files', 'fileupload_common_multiple', 'add_template_pvd.png', 'Add a set of HTML components to the server'
        , 9, NULL, 0, 'type=json', 0),
    (7417, 5101, 'Add a new empty component', 'newemptynode', 'add_file_common.png', 'Create a new empty HTML component file', 9, NULL, 0, '', 0);

INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7413, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7414, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7415, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7416, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7417, 0, 1, 3);

INSERT INTO `Config` (`ConfigKey`, `ConfigValue`) VALUES ('HTMLComponentsDirName', 'components');

INSERT INTO `NodeAllowedContents` (`IdNodeType`, `NodeType`) VALUES (5105, 5101);

INSERT INTO `NodeDefaultContents` (`IdNodeType`, `NodeType`, `Name`) VALUES (5105, 5101, 'components');

INSERT INTO `RelNodeTypeMimeType` (`idNodeType`, `extension`, `filter`) VALUES (5101, ';json;', 'json');

-- HTMLViewsFolder (5106)

INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`
    , `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `IsHidden`, `CanDenyDeletion`, `isGenerator`
    , `IsEnriching`, `System`, `Module`) VALUES
    (5106, 'HTMLViewsFolder', 'FolderNode', 'folder_template_view', 'Folder of HTML views', 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 1, NULL);

INSERT INTO `NodetypeModes` (`IdNodeType`, `Mode`) VALUES
    (5106, 'C'),
    (5106, 'R'),
    (5106, 'U'),
    (5106, 'D');

INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES
    (7418, 5106, 'Semantic Tags', 'setmetadata', 'change_next_state.png', 'Managing semantic tags related to the current node.', 999
        , 'ximTAGS', 0, NULL, 0),
    (7419, 5106, 'Copy', 'copy', 'copiar_carpeta_ximdoc.png', 'Copy a HTML sections folder to another destination', 31, NULL, 0, '', 0),
    (7420, 5106, 'Download all sections', 'filedownload_multiple', 'download_template_view.png', 'Download all HTML views files', 80, NULL, 0, '', 1),
    (7421, 5106, 'Upload views files', 'fileupload_common_multiple', 'add_template_pvd.png', 'Add a set of HTML views to the server', 9, NULL
        , 0, 'type=html', 0),
    (7422, 5106, 'Add a new empty view', 'newemptynode', 'add_file_common.png', 'Create a new empty HTML view file', 9, NULL, 0, '', 0);

INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7418, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7419, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7420, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7421, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7422, 0, 1, 3);

INSERT INTO `Config` (`ConfigKey`, `ConfigValue`) VALUES ('HTMLViewsDirName', 'views');

INSERT INTO `NodeDefaultContents` (`IdNodeType`, `NodeType`, `Name`) VALUES (5105, 5106, 'views');

INSERT INTO `RelNodeTypeMimeType` (`idNodeType`, `extension`, `filter`) VALUES (5106, ';html;', 'html');

INSERT INTO `NodeAllowedContents` (`IdNodeType`, `NodeType`) VALUES (5105, 5106);

-- HTMLLayout (5100)

INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`
    , `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `IsHidden`, `CanDenyDeletion`, `isGenerator`
    , `IsEnriching`, `System`, `Module`) VALUES (5100, 'HTMLLayout', 'HTMLLayoutNode', 'xml_document', 'JSON layout schema for HTML documents', 1
    , 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL);

INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES
    (7400, 5100, 'Semantic Tags', 'setmetadata', 'change_next_state.png', 'Managing semantic tags related to the current node.', 999, 'ximTAGS'
        , 0, NULL, 0),
    (7401, 5100, 'Delete layout', 'deletenode', 'delete_template_view.png', 'Delete layout schema', 75, NULL, 0, NULL, 0),
    (7402, 5100, 'Edit layout', 'edittext', 'edit_template_view.png', 'Edit layout schema', 20, NULL, 0, NULL, 0),
    (7403, 5100, 'Modify properties', 'renamenode', 'modiy_templateview', 'Modify properties of a JSON schema', 60, NULL, 0, NULL, 0);

INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7400, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7401, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7402, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7403, 0, 1, 3);

INSERT INTO `RelNodeTypeMimeType` (`idNodeType`, `extension`, `filter`) VALUES (5100, ';json;', 'json');

INSERT INTO `NodeAllowedContents` (`IdNodeType`, `NodeType`) VALUES (5105, 5100);

-- HTMLComponent (5107)

INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`
    , `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `IsHidden`, `CanDenyDeletion`, `isGenerator`
    , `IsEnriching`, `System`, `Module`) VALUES (5107, 'HTMLComponent', 'HTMLComponentNode', 'xml_document', 'JSON component for HTML documents', 1
    , 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL);

INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES
    (7409, 5107, 'Semantic Tags', 'setmetadata', 'change_next_state.png', 'Managing semantic tags related to the current node.', 999, 'ximTAGS'
        , 0, NULL, 0),
    (7410, 5107, 'Delete component', 'deletenode', 'delete_template_view.png', 'Delete a component schema', 75, NULL, 0, NULL, 0),
    (7411, 5107, 'Edit component', 'edittext', 'edit_template_view.png', 'Edit a component schema', 20, NULL, 0, NULL, 0),
    (7412, 5107, 'Modify properties', 'renamenode', 'modiy_templateview', 'Modify properties of a component schema', 60, NULL, 0, NULL, 0);

INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7409, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7410, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7411, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7412, 0, 1, 3);

INSERT INTO `RelNodeTypeMimeType` (`idNodeType`, `extension`, `filter`) VALUES (5107, ';json;', 'json');

INSERT INTO `NodeAllowedContents` (`IdNodeType`, `NodeType`) VALUES (5101, 5107);

-- HTMLView (5108)

INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`
    , `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `IsHidden`, `CanDenyDeletion`, `isGenerator`
    , `IsEnriching`, `System`, `Module`) VALUES (5108, 'HTMLView', 'HTMLViewNode', 'xml_document', 'HTML view for HTML documents', 1
    , 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL);

INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES
    (7470, 5108, 'Semantic Tags', 'setmetadata', 'change_next_state.png', 'Managing semantic tags related to the current node.', 999, 'ximTAGS'
        , 0, NULL, 0),
    (7471, 5108, 'Delete view', 'deletenode', 'delete_template_view.png', 'Delete a HTML view', 75, NULL, 0, NULL, 0),
    (7472, 5108, 'Edit view', 'edittext', 'edit_template_view.png', 'Edit a HTML view', 20, NULL, 0, NULL, 0),
    (7473, 5108, 'Modify properties', 'renamenode', 'modiy_templateview', 'Modify properties of a HTML view', 60, NULL, 0, NULL, 0);

INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7470, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7471, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7472, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7473, 0, 1, 3);

INSERT INTO `RelNodeTypeMimeType` (`idNodeType`, `extension`, `filter`) VALUES (5108, ';html;', 'html');

INSERT INTO `NodeAllowedContents` (`IdNodeType`, `NodeType`) VALUES (5106, 5108);

-- JsRootFolder (5090)
    
INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`
    , `IsSection`, `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `IsHidden`, `CanDenyDeletion`
    , `isGenerator`, `IsEnriching`, `System`, `Module`) VALUES
    (5090, 'JsRootFolder', 'FolderNode', 'folder_import', 'Root of Javascript folder', 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 1, NULL);
    
INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES
    (7425, 5090, 'Add new JS folder', 'addfoldernode', 'add_folder_css.png', 'Create a new javascript folder', 11, NULL, 0, '', 0),
    (7426, 5090, 'Upload JS files', 'fileupload_common_multiple', 'add_file_css.png', 'Add a set of javascript files to the server', 10
        , NULL, 0, 'type=js', 0),
    (7427, 5090, 'Semantic Tags', 'setmetadata', 'change_next_state.png', 'Managing semantic tags related to the current node.', 999
        , 'ximTAGS', 0, NULL, 0),
    (7428, 5090, 'Publish section', 'publicatesection', 'publicate_section.png', 'Publish a section massively', 70, NULL, 1, '', 0),
    (7429, 5090, 'Download all JS files', 'filedownload_multiple', 'download_file_css.png', 'Download all javascript files', 80, NULL, 0, '', 1),
    (7430, 5090, 'Add an empty JS document', 'newemptynode', 'add_file_common.png', 'Create a new javascript empty file', 9, NULL, 0, '', 0);

INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7425, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7426, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7427, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7428, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7429, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7430, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7425, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7426, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7427, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7428, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7429, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7430, 8, 1, 3);

INSERT INTO `NodeConstructors` (`IdNodeType`, `IdAction`) VALUES (5090, 6012);

INSERT INTO `NodeDefaultContents` (`IdNodeType`, `NodeType`, `Name`) VALUES (5014, 5090, 'js');

INSERT INTO `NodetypeModes` (`IdNodeType`, `Mode`) VALUES
    (5090, 'C'),
    (5090, 'R'),
    (5090, 'U'),
    (5090, 'D');

INSERT INTO `RelNodeTypeMimeType` (`idNodeType`, `extension`, `filter`) VALUES (5090, '', '');

INSERT INTO `NodeAllowedContents` (`IdNodeType`, `NodeType`, `Amount`) VALUES (5014, 5090, 1);

-- JsFolder (5091)

INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`
    , `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `IsHidden`, `CanDenyDeletion`, `isGenerator`
    , `IsEnriching`, `System`, `Module`) VALUES
    (5091, 'JsFolder', 'FolderNode', 'folder_import', 'Javascript folder', 1, 1, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 1, NULL);

INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES
    (7431, 5091, 'Add JS files', 'fileupload_common_multiple', 'add_file_css.png', 'Add a set of javascript files to the server', 10
        , NULL, 0, 'type=js', 0),
    (7432, 5091, 'Add JS folder', 'addfoldernode', 'add_folder_css.png', 'Create a new javascript folder', 11, NULL, 0, '', 0),
    (7433, 5091, 'Add empty JS document', 'newemptynode', 'add_file_common.png', 'Create a new javascript empty file', 9, NULL, 0, '', 0),
    (7434, 5091, 'Copy', 'copy', 'copiar_seccion.png', 'Copy a javascript subfolder to another destination', 31, NULL, 0, '', 0),
    (7435, 5091, 'Change name', 'renamenode', 'change_name_folder_css.png', 'Change folder name', 61, NULL, 0, '', 0),
    (7436, 5091, 'Publish section', 'publicatesection', 'publicate_section.png', 'Publish a section massively', 70, NULL, 1, '', 0),
    (7437, 5091, 'Delete folder', 'deletenode', 'delete_folder_css.png', 'Delete selected folder', 76, NULL, 1, '', 0),
    (7438, 5091, 'Download all JS files', 'filedownload_multiple', 'download_file_css.png', 'Download all javascript files', 80, NULL, 0, '', 1),
    (7439, 5091, 'Semantic Tags', 'setmetadata', 'change_next_state.png', 'Managing semantic tags related to the current node.', 999
        , 'ximTAGS', 0, NULL, 0);

INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7431, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7432, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7433, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7434, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7435, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7436, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7431, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7432, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7433, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7434, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7435, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7436, 8, 1, 3);

INSERT INTO `NodeAllowedContents` (`IdNodeType`, `NodeType`, `Amount`) VALUES (5090, 5091, 0), (5091, 5091, 0);

INSERT INTO `NodetypeModes` (`IdNodeType`, `Mode`, `IdAction`) VALUES
    (5091, 'C', 7432),
    (5091, 'R', NULL),
    (5091, 'U', 7435),
    (5091, 'D', 7437);

INSERT INTO `RelNodeTypeMimeType` (`idNodeType`, `extension`, `filter`) VALUES (5091, '', '');

-- JsFile (5092)

INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`
    , `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `IsHidden`, `CanDenyDeletion`, `isGenerator`
    , `IsEnriching`, `System`, `Module`) VALUES 
    (5092, 'JsFile', 'FileNode', 'css_document', 'Java Script document', 1, 1, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, NULL);

INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES
    (7440, 5092, 'Edit', 'edittext', 'edit_file_css.png', 'Edit content of javascript document', 20, NULL, 0, '', 0),
    (7441, 5092, 'Copy', 'copy', 'copiar_documento.png', 'Copy a javascript document to another destination', 30, NULL, 0, '', 0),
    (7442, 5092, 'Move node', 'movenode', 'move_node.png', 'Move a node', 40, NULL, 1, '', 0),
    (7443, 5092, 'Change name', 'renamenode', 'change_name_file_css.png', 'Change file name on import folder', 61, NULL, 0, '', 0),
    (7444, 5092, 'Publish', 'workflow_forward', 'change_next_state.png', 'Move a javascript document to the next state', 70, NULL, 0, '', 0),
    (7445, 5092, 'Move to previous state', 'workflow_backward', 'change_last_state.png', 'Move a text document to the previous state', -70
        , NULL, 0, '', 0),
    (7446, 5092, 'Version manager', 'manageversions', 'manage_versions.png', 'Manage repository of versions', 73, NULL, 0, '', 0),
    (7447, 5092, 'Delete', 'deletenode', 'delete_file_css.png', 'Delete file of import folder', 76, NULL, 1, '', 0),
    (7448, 5092, 'Download file', 'filedownload', 'download_file_css.png', 'Download a file to a local hard disk', 80, NULL, 0, '', 0),
    (7449, 5092, 'Semantic Tags', 'setmetadata', 'change_next_state.png', 'Managing semantic tags related to the current node.', 999
        , 'ximTAGS', 0, NULL, 0);

INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7440, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7440, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7441, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7441, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7442, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7442, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7443, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7443, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7444, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7444, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7445, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7445, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7446, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7446, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7447, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7447, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7448, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7448, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7449, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7449, 8, 1, 3);

INSERT INTO `NodeAllowedContents` (`IdNodeType`, `NodeType`, `Amount`) VALUES (5090, 5092, 0), (5091, 5092, 0);

INSERT INTO `NodetypeModes` (`IdNodeType`, `Mode`, `IdAction`) VALUES
    (5092, 'R', NULL),
    (5092, 'U', 7440),
    (5092, 'D', 7447);

INSERT INTO `RelNodeTypeMimeType` (`idNodeType`, `extension`, `filter`) VALUES (5092, ';js;', 'js');

-- HTMLContainer (5103)

INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES 
    (7424, 5018, 'Add new HTML document', 'createxmlcontainer', 'add_xml.png', 'Create a new HTML document in several languages', 11
    , NULL, 0, 'type=HTML', 0);

INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7424, 0, 1, 3);

INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`
    , `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `IsHidden`, `CanDenyDeletion`, `isGenerator`
    , `IsEnriching`, `System`, `Module`) VALUES
    (5103, 'HTMLContainer', 'XmlContainerNode', 'contenedordoc', 'Container of HTML documents', 1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, NULL);

INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES
    (7450, 5103, 'Add new language', 'addlangxmlcontainer', 'add_language_xml.png', 'Add a document with a different language', 10, NULL, 0, '', 0),
    (7451, 5103, 'Copy', 'copy', 'copiar_carpeta_ximdoc.png', 'Copy a document to another destination', 30, NULL, 0, '', 0),
    (7452, 5103, 'Move node', 'movenode', 'move_node.png', 'Move a node', 35, NULL, 0, '', 0),
    (7453, 5103, 'Change name of HTML document', 'renamenode', 'change_name_xml.png', 'Change the document name and all its language versions'
        , 25, NULL, 0, '', 0),
    (7454, 5103, 'Delete document', 'deletenode', 'delete_xml.png', 'Delete HTML document in all its languages', 90, NULL, 1, '', 0),
    (7455, 5103, 'Edit metadata', 'managemetadata', 'xix.png', 'Edit the metadata info', -20, NULL, 0, NULL, 0),
    (7456, 5103, 'Modify properties', 'manageproperties', 'xix.png', 'Modify properties', 27, NULL, 0, NULL, 0),
    (7457, 5103, 'Semantic Tags', 'setmetadata', 'change_next_state.png', 'Managing semantic tags related to the current node.', 81
        , 'ximTAGS', 0, NULL, 0);

INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7450, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7451, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7452, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7453, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7454, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7455, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7456, 0, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7457, 0, 1, 3);
    
INSERT INTO `NodeConstructors` (`IdNodeType`, `IdAction`) VALUES (5103, 7424);

INSERT INTO `NodetypeModes` (`IdNodeType`, `Mode`, `IdAction`) VALUES
    (5103, 'C', 7424),
    (5103, 'R', NULL),
    (5103, 'U', 7450),
    (5103, 'D', 7454);

-- HTMLDocument (5104)

INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`
    , `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `IsHidden`, `CanDenyDeletion`, `isGenerator`
    , `IsEnriching`, `System`, `Module`) VALUES 
    (5104, 'HtmlDocument', 'HTMLDocumentNode', 'doc', 'HTML document', 1, 1, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, NULL);

INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES
    (7458, 5104, 'Edit HTML in text mode', 'edittext', 'edit_file_xml_txt.png', 'Edit content of HTML in plain text', 21, NULL, 0, 'type=text', 0),
    (7459, 5104, 'Edit HTML document', 'xedit', 'edit_file_xml.png', 'Edit content of HTML document with the wysiwyg editor', 20, NULL, 0
           , 'type=html', 0),
    (7460, 5104, 'Publish', 'workflow_forward', 'change_next_state.png', 'Move to the next state', 72, NULL, 0, '', 0),
    (7461, 5104, 'Move to previous state', 'workflow_backward', 'change_last_state.png', 'Move to the previous state', -70, NULL, 0, '', 0),
    (7462, 5104, 'Expire document', 'expiredoc', 'expire_section.png', 'Expire a document', 76, NULL, 0, '', 0),
    (7463, 5104, 'Version manager', 'manageversions', 'manage_versions.png', 'Manage repository of versions', 82, NULL, 0, '', 0),
    (7464, 5104, 'Symbolic link', 'xmlsetlink', 'file_xml_symbolic.png', 'Modify document which borrows the content', -74, NULL, 0, '', 0),
    (7465, 5104, 'Delete document', 'deletenode', 'delete_file_xml.png', 'Delete selected HTML document', 90, NULL, 1, '', 0),
    (7466, 5104, 'Preview', 'preview', 'xix.png', 'Preview of the document', 65, NULL, 0, '', 0),
    (7467, 5104, 'Semantic Tags', 'setmetadata', 'change_next_state.png', 'Managing semantic tags related to the current node.', 81
           , 'ximTAGS', 0, NULL, 0);

INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7458, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7458, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7459, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7459, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7460, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7460, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7461, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7461, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7462, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7462, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7463, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7463, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7464, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7464, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7465, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7465, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7466, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7466, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7467, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 7467, 8, 1, 3);

INSERT INTO `NodeAllowedContents` (`IdNodeType`, `NodeType`, `Amount`) VALUES
    (5018, 5103, 0),
    (5103, 5104, 0);

INSERT INTO `NodeConstructors` (`IdNodeType`, `IdAction`) VALUES (5104, 7450);

INSERT INTO `NodetypeModes` (`IdNodeType`, `Mode`, `IdAction`) VALUES
    (5104, 'C', 7450),
    (5104, 'R', NULL),
    (5104, 'U', 7458),
    (5104, 'D', 7465);

INSERT INTO `RelNodeTypeMimeType` (`idNodeType`, `extension`, `filter`) VALUES (5104, '', '');

-- HTML EDITOR CONFIGURATION

INSERT INTO `Config` (`ConfigKey`, `ConfigValue`) VALUES ('HTMLEditorURL', null), ('HTMLEditorEnabled', '0');

-- XOTF FOLDER

INSERT INTO `NodeTypes` (`IdNodeType`, `Name`, `Class`, `Icon`, `Description`, `IsRenderizable`, `HasFSEntity`, `CanAttachGroups`, `IsSection`
    , `IsFolder`, `IsVirtualFolder`, `IsPlainFile`, `IsStructuredDocument`, `IsPublishable`, `IsHidden`, `CanDenyDeletion`, `isGenerator`
    , `IsEnriching`, `System`, `Module`) 
    VALUES ('5110', 'XOTFFolder', 'FolderNode', 'folder_common', 'Ximdex On The Fly folder', '1', '1'
    , '0', '0', '1', '0', '0', '0', '1', '0', '1', '0', '0', '1', NULL);

INSERT INTO `Actions` (`IdAction`, `IdNodeType`, `Name`, `Command`, `Icon`, `Description`, `Sort`, `Module`, `Multiple`, `Params`, `IsBulk`) VALUES
    (6190, 5110, 'Add files', 'fileupload_common_multiple', 'add_file_common.png', 'Add a set of files to this folder', 10, NULL, 0
        , 'type=common', 0),
    (6191, 5110, 'Publish section', 'publicatesection', 'publicate_section.png', 'Publish a section massively', 70, NULL, 1, '', 0),
    (6192, 5110, 'Download all files', 'filedownload_multiple', 'download_html_file.png', 'Download all files', 80, NULL, 0, '', 1),
    (6193, 5110, 'Add empty file', 'newemptynode', 'add_file_common.png', 'Create a new empty file', 9, NULL, 0, '', 0),
    (6194, 5110, 'Add common folder', 'addfoldernode', 'add_folder_common.png', 'Create a new common folder', 11, NULL, 0, '', 0);

INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 6190, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 6191, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 6192, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 6193, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 6194, 7, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 6190, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 6191, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 6192, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 6193, 8, 1, 3);
INSERT INTO `RelRolesActions` (`IdRol`, `IdAction`, `IdState`, `IdContext`, `IdPipeline`) VALUES (201, 6194, 8, 1, 3);

INSERT INTO `NodeAllowedContents` (`IdNodeAllowedContent`, `IdNodeType`, `NodeType`, `Amount`) VALUES
    (NULL, '5014', '5110', '1'), 
    (NULL, '5015', '5110', '1'),
    (NULL, '5110', '5023', '0'),
    (NULL, '5110', '5039', '0'), 
    (NULL, '5110', '5040', '0'),
    (NULL, '5110', '5041', '0');
    
INSERT INTO `NodeConstructors` (`IdNodeConstructor`, `IdNodeType`, `IdAction`) 
    VALUES (NULL, '5110', '6012'), (NULL, '5110', '6013'), (NULL, '5110', '6014');
    
INSERT INTO `NodetypeModes` (`IdNodeType`, `Mode`) VALUES (5110, 'C'), (5110, 'R'), (5110, 'U'), (5110, 'D');

INSERT INTO `NodeDefaultContents` (`IdNodeType`, `NodeType`, `Name`) VALUES (5014, 5110, 'xotf'), (5015, 5110, 'xotf');
