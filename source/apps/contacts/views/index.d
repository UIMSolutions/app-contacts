/*********************************************************************************************************
  Copyright: © 2015-2023 Ozan Nurettin Süel (Sicherheitsschmiede)                                        
  License: Subject to the terms of the Apache 2.0 license, as written in the included LICENSE.txt file.  
  Authors: Ozan Nurettin Süel (Sicherheitsschmiede)                                                      
**********************************************************************************************************/
module apps.contacts.views.index;

import apps.contacts;
@safe:

class DCTTIndexView : DView {
  mixin(ViewThis!("CTTIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DCTTIndexView~":DCTTIndexView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP Contacts -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("CTTIndexView"));
