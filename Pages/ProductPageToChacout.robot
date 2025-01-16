*** Variables ***
${LABLE}       //android.view.ViewGroup[@content-desc="test-Cart drop zone"]/android.view.ViewGroup
${ITEM1}        xpath=(//android.widget.TextView[@text="ADD TO CART"])[1]
${ITEM2}       //android.widget.TextView[@text="ADD TO CART"]
${CART}        //android.view.ViewGroup[@content-desc="test-Cart"]/android.view.ViewGroup/android.widget.ImageView
${CHECOUT}    //android.view.ViewGroup[@content-desc="test-CHECKOUT"]
${FIRST_NAME}    //android.widget.EditText[@content-desc="test-First Name"]
${LAST_NAME}    //android.widget.EditText[@content-desc="test-Last Name"]
${CODE}        //android.widget.EditText[@content-desc="test-Zip/Postal Code"]
${CONTINUE_BTN}    //android.view.ViewGroup[@content-desc="test-CONTINUE"]
${FINISH_BTN}        //android.widget.TextView[@text="FINISH"]
${TEXT_MSG}   //android.widget.TextView[@text="THANK YOU FOR YOU ORDER"]