{literal}    
    <script type="text/javascript"> 
        $(document).ready(function() {
            $('#adminPanel_extension_form_editGroup').ajaxForm( { 'beforeSubmit' :function() { 
                floaterClose();
                return true;
            },
            'success': function () {
                adminPanel_extension_refreshSubtab('groups');
                adminPanel_extension_refreshSubtab('users');
            }}); 
        }); 
    </script>
{/literal}

<div id="floater_innerwrap">
    
    <div id="floater_handle">
        <span id="floater_title">{$kga.lang.editGroup}</span>
        <div class="right">
            <a href="#" class="close" onClick="floaterClose();">{$kga.lang.close}</a>
        </div>       
    </div>

    <div class="floater_content">
        <form id="adminPanel_extension_form_editGroup" action="../extensions/ki_adminpanel/processor.php" method="post"> 
            <fieldset>
                <ul>
                    <li>
                        <label for="name">{$kga.lang.groupname}:</label>
                        <input class="formfield" type="text" name="name" value="{$group_details.name|escape:'html'}" size=35 />
                    </li>

                    <li>
                        <label for="leaders" >{$kga.lang.groupleader}:</label>
                        <select class="formfield" name="leaders[]" multiple size='5' style="width:255px">
                            {html_options options=$users selected=$selectedUsers}
                        </select>
                    </li>
                                                
                </ul>
                <input name="id" type="hidden" value="{$group_details.groupID}" />
                <input name="axAction" type="hidden" value="sendEditGroup" />
                <div id="formbuttons">
                    <input class='btn_norm' type='button' value='{$kga.lang.cancel}' onClick='floaterClose(); return false;' />
                    <input class='btn_ok' type='submit' value='{$kga.lang.submit}' />
                </div>
            </fieldset>
        </form>
    </div>
</div>
