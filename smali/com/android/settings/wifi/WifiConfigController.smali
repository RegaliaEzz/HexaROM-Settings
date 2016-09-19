.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;,
        Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final WAPI_PSK_TYPE_VALUES:[I

.field private static final mApMaskCheckVsie:[I

.field private static mCanceltoForget:Z

.field private static mForgetCheck:Z

.field private static final mIgnorableApMASK:[I

.field private static mSaved:Z

.field private static mVzwNegativeButton:I

.field private static mVzwNeutralButton:I

.field private static mVzwPositiveButton:I


# instance fields
.field private PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private WIFI_VZW_CANCEL:I

.field private WIFI_VZW_CONNECT:I

.field private WIFI_VZW_EDIT:I

.field private WIFI_VZW_FORGET:I

.field private WIFI_VZW_NONE:I

.field private WIFI_VZW_SAVE:I

.field private bIsChangedSecurity:Z

.field private bIsChangedSsid:Z

.field certListFromCCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field certListFromUCM:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field certListFromUCM_uri:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private eToast:Landroid/widget/Toast;

.field focusListener:Landroid/view/View$OnFocusChangeListener;

.field private isRequestHideKeyboard:Z

.field private mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

.field private mAutoGenFirstTime:Z

.field private mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

.field private mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

.field private mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

.field private mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDns1View:Landroid/widget/EditText;

.field private mDns2View:Landroid/widget/EditText;

.field private mEapAnonymousView:Landroid/widget/EditText;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapIdentityView:Landroid/widget/EditText;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mEdit:Z

.field private mGateway:Ljava/lang/String;

.field private mGatewayView:Landroid/widget/EditText;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mInitIpAddress:Ljava/lang/String;

.field private mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

.field private mIntranetOnlyLayout:Landroid/widget/LinearLayout;

.field private mIntranetOnlyMode:Z

.field private mIpAddressView:Landroid/widget/EditText;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mIsCheckedCckm:Z

.field private mIsCheckedFt:Z

.field private mIsOwnerUser:Z

.field private mLevels:[Ljava/lang/String;

.field private mLinkProperties:Landroid/net/LinkProperties;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field public mPasswordErrorText:Landroid/widget/TextView;

.field public mPasswordView:Landroid/widget/EditText;

.field private mPhase1Spinner:Landroid/widget/Spinner;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mPrevInteranetUseOnlyMode:Z

.field private mProxyAuthId:Landroid/widget/TextView;

.field private mProxyAuthPassword:Landroid/widget/TextView;

.field private mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mRetry:Z

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mShowOnceFlagforSis:Z

.field private mShowPasswordLayout:Landroid/widget/LinearLayout;

.field private mSimNum:I

.field private mSsidErrorText:Landroid/widget/TextView;

.field private mSsidView:Landroid/widget/EditText;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field mTempSsid:Ljava/lang/String;

.field private mTextViewChangedHandler:Landroid/os/Handler;

.field private mTouchX:I

.field private mTouchY:I

.field private mView:Landroid/view/View;

.field private mWapiAsCert:Landroid/widget/Spinner;

.field private mWapiCertIndex:I

.field private mWapiPskType:Landroid/widget/Spinner;

.field private mWapiUserCert:Landroid/widget/Spinner;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field passwordWatcher:Landroid/text/TextWatcher;

.field simOperator:Ljava/lang/String;

.field simslot2only:Ljava/lang/String;

.field simstate:Ljava/lang/String;

.field ssidWatcher:Landroid/text/TextWatcher;

.field private unspecifiedCert:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    .line 160
    sput v3, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 161
    sput v3, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 162
    sput v3, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    .line 270
    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mForgetCheck:Z

    .line 271
    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 272
    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    .line 1062
    new-array v0, v2, [I

    const v3, 0x2ba8c0

    aput v3, v0, v1

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->mIgnorableApMASK:[I

    .line 1063
    new-array v0, v2, [I

    const v2, 0xa14ac

    aput v2, v0, v1

    sput-object v0, Lcom/android/settings/wifi/WifiConfigController;->mApMaskCheckVsie:[I

    return-void

    :cond_0
    move v0, v2

    .line 138
    goto :goto_0

    .line 178
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 5
    .param p1, "parent"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "retry"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v4, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    .line 164
    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    .line 165
    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    .line 166
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    .line 167
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    .line 168
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    .line 194
    const-string v2, "unspecified"

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 223
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 224
    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 225
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 226
    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 227
    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 240
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 241
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 242
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 244
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    .line 247
    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 248
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    .line 249
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    .line 250
    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    .line 253
    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 254
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 255
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 273
    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 274
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 276
    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    .line 286
    iput-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    .line 287
    iput v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mTouchX:I

    .line 288
    iput v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mTouchY:I

    .line 972
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 3342
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$5;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    .line 3373
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$6;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    .line 3738
    iput-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowOnceFlagforSis:Z

    .line 300
    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    .line 301
    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 302
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/wifi/WifiConfigController;->initController(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    .line 303
    return-void

    :cond_0
    move v0, v1

    .line 244
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZLandroid/net/LinkProperties;)V
    .locals 6
    .param p1, "parent"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "retry"    # Z
    .param p6, "linkProperties"    # Landroid/net/LinkProperties;

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v3, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    .line 164
    iput v5, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    .line 165
    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    .line 166
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    .line 167
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    .line 168
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    .line 194
    const-string v1, "unspecified"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 223
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 224
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 225
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 226
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 227
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 240
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 241
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 242
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 244
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    .line 247
    iput v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 248
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    .line 249
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    .line 250
    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    .line 253
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 254
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 255
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 273
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 274
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 276
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    .line 286
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    .line 287
    iput v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mTouchX:I

    .line 288
    iput v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mTouchY:I

    .line 972
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 3342
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$5;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    .line 3373
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$6;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    .line 3738
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowOnceFlagforSis:Z

    .line 316
    sput-boolean v5, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 317
    iput-object p6, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 318
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->initController(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    .line 319
    return-void

    :cond_0
    move v0, v5

    .line 244
    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZZ)V
    .locals 6
    .param p1, "parent"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "retry"    # Z
    .param p6, "savedAP"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput v3, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    .line 164
    iput v5, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    .line 165
    iput v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    .line 166
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    .line 167
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    .line 168
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    .line 194
    const-string v1, "unspecified"

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 223
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 224
    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 225
    sget-object v1, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 226
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 227
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 240
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 241
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 242
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 244
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    .line 247
    iput v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 248
    const-string v0, "gsm.sim.operator.numeric"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    .line 249
    const-string v0, "ril.ICC_TYPE"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    .line 250
    const-string v0, "ril.MSIMM"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    .line 253
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mTempSsid:Ljava/lang/String;

    .line 254
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 255
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 273
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    .line 274
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 276
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    .line 286
    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    .line 287
    iput v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mTouchX:I

    .line 288
    iput v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mTouchY:I

    .line 972
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$1;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    .line 3342
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$5;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    .line 3373
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiConfigController$6;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    .line 3738
    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowOnceFlagforSis:Z

    .line 308
    sput-boolean p6, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    .line 309
    sput-boolean v5, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 310
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->initController(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V

    .line 311
    return-void

    :cond_0
    move v0, v5

    .line 244
    goto :goto_0
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiConfigController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/wifi/WifiConfigController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/settings/wifi/WifiConfigController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/wifi/WifiConfigController;Landroid/content/Context;)Landroid/content/Context;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/CheckBox;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/settings/wifi/WifiConfigController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;
    .param p1, "x1"    # Z

    .prologue
    .line 127
    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mShowOnceFlagforSis:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->restartFocusedViewInput()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;
    .param p1, "x1"    # Landroid/widget/Toast;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->eToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiConfigController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTouchX:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/settings/wifi/WifiConfigController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mTouchX:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiConfigController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTouchY:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/settings/wifi/WifiConfigController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;
    .param p1, "x1"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mTouchY:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/WifiConfigController;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/wifi/WifiConfigController;)Lcom/android/settings/wifi/WifiConfigUiBase;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/wifi/WifiConfigController;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/settings/wifi/WifiConfigController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 127
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/settings/wifi/WifiConfigController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiConfigController;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addCaptivePortalRow(Landroid/view/ViewGroup;I)V
    .locals 13
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I

    .prologue
    const/4 v12, 0x0

    const v11, 0x7f0d0300

    const/4 v10, 0x1

    .line 1170
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 1171
    .local v0, "currentWifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLoginUrl()Ljava/lang/String;

    move-result-object v5

    .line 1173
    .local v5, "url":Ljava/lang/String;
    if-nez v5, :cond_0

    .line 1174
    const-string v7, "WifiConfigController"

    const-string v8, "Invalid URL for Captive portal login"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :goto_0
    return-void

    .line 1178
    :cond_0
    const-string v7, "\""

    const-string v8, ""

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1179
    move-object v2, v5

    .line 1181
    .local v2, "linkName":Ljava/lang/String;
    const-string v7, "//"

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    const-string v8, "//"

    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_4

    .line 1182
    sget-boolean v7, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v7, :cond_1

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addCaptivePortalRow: indexof(//):"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "//"

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_1
    const-string v7, "//"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v2, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1184
    .local v1, "front":Ljava/lang/String;
    const-string v7, "//"

    invoke-virtual {v2, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    invoke-virtual {v2, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 1185
    .local v3, "rear":Ljava/lang/String;
    sget-boolean v7, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v7, :cond_2

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addCaptivePortalRow: front - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", rear - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v10, :cond_3

    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1187
    const-string v7, "/"

    invoke-virtual {v3, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1189
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1191
    .end local v1    # "front":Ljava/lang/String;
    .end local v3    # "rear":Ljava/lang/String;
    :cond_4
    sget-boolean v7, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v7, :cond_5

    const-string v7, "WifiConfigController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addCaptivePortalRow: url - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", linkName - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "<a href=\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\">"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "</a>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1194
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v7}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f04025b

    invoke-virtual {v7, v8, p1, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 1195
    .local v4, "row":Landroid/view/View;
    const v7, 0x7f0d01ca

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1196
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {v6}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1197
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1198
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1199
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setLinksClickable(Z)V

    .line 1200
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1201
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    .line 1202
    invoke-virtual {v4, v10}, Landroid/view/View;->setClickable(Z)V

    .line 1203
    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1204
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 1205
    invoke-virtual {p1, v10}, Landroid/view/ViewGroup;->setClickable(Z)V

    goto/16 :goto_0
.end method

.method private addGatewayRow(Landroid/view/ViewGroup;I)V
    .locals 13
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I

    .prologue
    const v11, 0xffffff

    const v12, 0x7f0d0300

    .line 1065
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v9, v9, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1066
    :cond_1
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1068
    .local v1, "connectivity":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1069
    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "WifiConfigController"

    const-string v10, "Gateway filtered as Metered Network"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1073
    :cond_2
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v4

    .line 1074
    .local v4, "info":Landroid/net/wifi/WifiInfo;
    sget-object v0, Lcom/android/settings/wifi/WifiConfigController;->mIgnorableApMASK:[I

    .local v0, "arr$":[I
    array-length v5, v0

    .local v5, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v5, :cond_4

    aget v6, v0, v3

    .line 1075
    .local v6, "mask":I
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v9

    and-int/2addr v9, v11

    if-ne v9, v6, :cond_3

    .line 1076
    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "WifiConfigController"

    const-string v10, "Masked Android Hotspot"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1074
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1081
    .end local v6    # "mask":I
    :cond_4
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getCheckVsieForSns()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1082
    sget-object v0, Lcom/android/settings/wifi/WifiConfigController;->mApMaskCheckVsie:[I

    array-length v5, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_6

    aget v6, v0, v3

    .line 1083
    .restart local v6    # "mask":I
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v9

    and-int/2addr v9, v11

    if-ne v9, v6, :cond_5

    .line 1084
    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "WifiConfigController"

    const-string v10, "This has a LO Gateway Address"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1082
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1090
    .end local v6    # "mask":I
    :cond_6
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v9}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v2

    .line 1091
    .local v2, "dhcpInfo":Landroid/net/DhcpInfo;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 1092
    .local v8, "webpage":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_0

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v9}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v9

    sget-object v10, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v9, v10, :cond_0

    .line 1093
    iget v9, v2, Landroid/net/DhcpInfo;->gateway:I

    if-eqz v9, :cond_0

    .line 1094
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "http://"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/net/DhcpInfo;->gateway:I

    invoke-static {v10}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    .line 1095
    const-string v9, "<u>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    const-string v9, "</u>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_7

    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Go to Webpage: gateway : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    :cond_7
    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v9}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v9

    const v10, 0x7f04025b

    const/4 v11, 0x0

    invoke-virtual {v9, v10, p1, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 1101
    .local v7, "row":Landroid/view/View;
    const v9, 0x7f0d01ca

    invoke-virtual {v7, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1102
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1103
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a0108

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1104
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1106
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v10, Lcom/android/settings/wifi/WifiConfigController$2;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/WifiConfigController$2;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1117
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v10, Lcom/android/settings/wifi/WifiConfigController$3;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/WifiConfigController$3;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1125
    invoke-virtual {v7, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    new-instance v10, Lcom/android/settings/wifi/WifiConfigController$4;

    invoke-direct {v10, p0}, Lcom/android/settings/wifi/WifiConfigController$4;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1156
    invoke-virtual {p1, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 4
    .param p1, "group"    # Landroid/view/ViewGroup;
    .param p2, "name"    # I
    .param p3, "value"    # Ljava/lang/String;

    .prologue
    .line 1056
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04025b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 1057
    .local v0, "row":Landroid/view/View;
    const v1, 0x7f0d01ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 1058
    const v1, 0x7f0d0300

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1059
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1060
    return-void
.end method

.method private checkIp4vAddress(Ljava/lang/String;)Z
    .locals 4
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 2655
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2656
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3a

    if-ne v2, v3, :cond_1

    .line 2665
    :cond_0
    :goto_1
    return v1

    .line 2660
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-ne v2, v3, :cond_2

    .line 2661
    const/4 v1, 0x1

    goto :goto_1

    .line 2655
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private generateBlankFields(Ljava/net/Inet4Address;)V
    .locals 7
    .param p1, "inetAddr"    # Ljava/net/Inet4Address;

    .prologue
    .line 1821
    const-string v4, "WifiConfigController"

    const-string v5, "generateBlankFields"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1823
    const/4 v3, -0x1

    .line 1824
    .local v3, "networkPrefixLength":I
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1826
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0467

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1828
    const/16 v3, 0x18

    .line 1840
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1843
    :try_start_0
    invoke-static {p1, v3}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v2

    .line 1844
    .local v2, "netPart":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 1845
    .local v0, "addr":[B
    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x1

    aput-byte v5, v0, v4

    .line 1846
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1852
    .end local v0    # "addr":[B
    .end local v2    # "netPart":Ljava/net/InetAddress;
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1854
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0461

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1856
    :cond_2
    return-void

    .line 1831
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .line 1832
    if-ltz v3, :cond_4

    const/16 v4, 0x20

    if-le v3, v4, :cond_0

    .line 1833
    :cond_4
    const/16 v3, 0x18

    goto :goto_0

    .line 1835
    :catch_0
    move-exception v1

    .line 1836
    .local v1, "e":Ljava/lang/NumberFormatException;
    const/16 v3, 0x18

    goto :goto_0

    .line 1848
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v4

    goto :goto_1

    .line 1847
    :catch_2
    move-exception v4

    goto :goto_1
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 1815
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    check-cast v1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1817
    :goto_0
    return-object v1

    .line 1816
    :catch_0
    move-exception v0

    .line 1817
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 1816
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8
    .param p1, "ipv6Address"    # Ljava/lang/String;
    .param p2, "getType"    # I

    .prologue
    .line 2669
    const/4 v2, 0x0

    .line 2670
    .local v2, "ipv4Address":Ljava/lang/String;
    const/4 v5, 0x0

    .line 2671
    .local v5, "startIdx":I
    const/4 v0, 0x0

    .line 2672
    .local v0, "endIdx":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 2674
    .local v4, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 2675
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_0

    .line 2676
    add-int/lit8 v5, v1, 0x2

    .line 2677
    move v1, v5

    .line 2680
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x2f

    if-ne v6, v7, :cond_2

    if-eqz v5, :cond_2

    .line 2681
    move v0, v1

    .line 2682
    const/4 v6, 0x1

    if-ne p2, v6, :cond_1

    .line 2683
    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 2692
    .end local v2    # "ipv4Address":Ljava/lang/String;
    .local v3, "ipv4Address":Ljava/lang/String;
    :goto_2
    return-object v3

    .line 2685
    .end local v3    # "ipv4Address":Ljava/lang/String;
    .restart local v2    # "ipv4Address":Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v1, 0x1

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 2674
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move-object v3, v2

    .line 2692
    .end local v2    # "ipv4Address":Ljava/lang/String;
    .restart local v3    # "ipv4Address":Ljava/lang/String;
    goto :goto_2
.end method

.method private getSignalString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1209
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 1210
    .local v0, "level":I
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    .line 1211
    const-string v1, "WifiConfigController"

    const-string v2, "Force level of wifi signal"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .line 1214
    :cond_0
    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 3980
    if-nez p1, :cond_1

    move v0, v1

    .line 3989
    :cond_0
    :goto_0
    return v0

    .line 3983
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/widget/Spinner;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 3984
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3983
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v1

    .line 3989
    goto :goto_0
.end method

.method private initController(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settings/wifi/AccessPoint;ZZ)V
    .locals 35
    .param p1, "parent"    # Lcom/android/settings/wifi/WifiConfigUiBase;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "accessPoint"    # Lcom/android/settings/wifi/AccessPoint;
    .param p4, "edit"    # Z
    .param p5, "retry"    # Z

    .prologue
    .line 321
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 324
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 325
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    .line 326
    if-nez p3, :cond_8

    const/16 v30, 0x0

    :goto_0
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 328
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    .line 329
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    .line 331
    new-instance v30, Landroid/os/Handler;

    invoke-direct/range {v30 .. v30}, Landroid/os/Handler;-><init>()V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    .line 334
    .local v24, "res":Landroid/content/res/Resources;
    const/4 v7, 0x0

    .line 336
    .local v7, "bConnectingState":Z
    const v30, 0x7f110027

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const-string v31, "wifi"

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/net/wifi/WifiManager;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 342
    new-instance v30, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f04027b

    const v33, 0x7f110033

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v30 .. v33}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v30, v0

    const v31, 0x1090009

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 347
    new-instance v30, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f04027b

    const v33, 0x7f110034

    move-object/from16 v0, v24

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v33

    invoke-direct/range {v30 .. v33}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    move-object/from16 v30, v0

    const v31, 0x1090009

    invoke-virtual/range {v30 .. v31}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f0e03fc

    invoke-virtual/range {v30 .. v31}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    .line 354
    const v30, 0x7f0a008a

    move-object/from16 v0, v24

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v27

    .line 356
    .local v27, "spinnerTintColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05cc

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Spinner;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const v31, 0x7f110035

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05d5

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Spinner;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const v31, 0x7f110036

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05e3

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

    .line 368
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05e2

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyLayout:Landroid/widget/LinearLayout;

    .line 370
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->updateShowSisOption()V

    .line 372
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_0

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d0566

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Spinner;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 377
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f04027b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f110016

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 378
    .local v4, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v30, 0x1090009

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 384
    .end local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-nez v30, :cond_a

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e03a7

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d0563

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/EditText;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05ae

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const v31, 0x7f0e03df

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setHint(I)V

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/EditText;->requestFocus()Z

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x6

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x9

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d0566

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Spinner;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v30

    move-object/from16 v0, v30

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 401
    sget-boolean v30, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v30, :cond_9

    .line 403
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f04027b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f110018

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 404
    .restart local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v30, 0x1090009

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 430
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d035e

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 433
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 434
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 437
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05c8

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05c9

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->focusListener:Landroid/view/View$OnFocusChangeListener;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05dd

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05de

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 446
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0434

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 448
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 449
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 452
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e042e

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 910
    .end local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local p1    # "parent":Lcom/android/settings/wifi/WifiConfigUiBase;
    :cond_2
    :goto_2
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_57

    .line 911
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-eqz v30, :cond_56

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_56

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_56

    .line 912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-eq v0, v1, :cond_3

    const/16 v30, 0x1

    move/from16 v0, v30

    if-ne v7, v0, :cond_52

    .line 913
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e053a

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 914
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_4

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0431

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 916
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 918
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    .line 919
    if-nez v7, :cond_51

    .line 920
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_6

    const-string v30, "VerizonWiFiAccess"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_6

    .line 921
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e03c4

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 922
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 966
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v30

    if-eqz v30, :cond_7

    sget-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    if-nez v30, :cond_7

    .line 967
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 969
    :cond_7
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->mForgetCheck:Z

    .line 970
    return-void

    .line 326
    .end local v7    # "bConnectingState":Z
    .end local v24    # "res":Landroid/content/res/Resources;
    .end local v27    # "spinnerTintColor":I
    .restart local p1    # "parent":Lcom/android/settings/wifi/WifiConfigUiBase;
    :cond_8
    move-object/from16 v0, p3

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v30, v0

    goto/16 :goto_0

    .line 411
    .restart local v7    # "bConnectingState":Z
    .restart local v24    # "res":Landroid/content/res/Resources;
    .restart local v27    # "spinnerTintColor":I
    :cond_9
    new-instance v4, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v30, v0

    const v31, 0x7f04027b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v32

    const v33, 0x7f110016

    invoke-virtual/range {v32 .. v33}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v30

    move/from16 v1, v31

    move-object/from16 v2, v32

    invoke-direct {v4, v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 412
    .restart local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v30, 0x1090009

    move/from16 v0, v30

    invoke-virtual {v4, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto/16 :goto_1

    .line 454
    .end local v4    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d038b

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 457
    .local v16, "group":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    .line 458
    .local v28, "state":Landroid/net/NetworkInfo$DetailedState;
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v26

    .line 461
    .local v26, "signalLevel":Ljava/lang/String;
    move-object/from16 v17, v16

    .line 462
    .local v17, "group2":Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v18

    .line 463
    .local v18, "info":Landroid/net/wifi/WifiInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v21

    .line 465
    .local v21, "level":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d00e3

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 466
    .local v19, "infoMsg":Landroid/widget/TextView;
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_b

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_b

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_b

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_32

    .line 470
    :cond_b
    const/4 v7, 0x1

    .line 475
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v30, v0

    if-eqz v30, :cond_33

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-nez v30, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_33

    .line 479
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05ca

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .end local v17    # "group2":Landroid/view/ViewGroup;
    check-cast v17, Landroid/view/ViewGroup;

    .line 494
    .restart local v17    # "group2":Landroid/view/ViewGroup;
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-nez v30, :cond_f

    .line 495
    sget-boolean v30, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v30, :cond_d

    sget-boolean v30, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v30, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_e

    .line 496
    :cond_d
    if-eqz v26, :cond_e

    if-eqz v18, :cond_e

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_e

    .line 497
    const v30, 0x7f0e03e1

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v31

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x28

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v31

    const-string v32, "Mbps"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    const/16 v32, 0x29

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 505
    :cond_e
    const v30, 0x7f0e03e0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/settings/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 509
    :cond_f
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_11

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v9

    .line 511
    .local v9, "config_details":Landroid/net/wifi/WifiConfiguration;
    if-eqz v9, :cond_11

    .line 512
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_10

    .line 513
    const v30, 0x7f0e0348

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->HS20OperatorName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 515
    :cond_10
    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_11

    .line 516
    const v30, 0x7f0e0349

    iget-object v0, v9, Landroid/net/wifi/WifiConfiguration;->HS20VenueName:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 522
    .end local v9    # "config_details":Landroid/net/wifi/WifiConfiguration;
    :cond_11
    const/16 v25, 0x0

    .line 523
    .local v25, "showAdvancedFields":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1a

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v8

    .line 525
    .local v8, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v30

    sget-object v31, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_34

    .line 526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setSelection(I)V

    .line 527
    const/16 v25, 0x1

    .line 529
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v29

    .line 530
    .local v29, "staticConfig":Landroid/net/StaticIpConfiguration;
    if-eqz v29, :cond_12

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v30, v0

    if-eqz v30, :cond_12

    .line 531
    const v30, 0x7f0e03e5

    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 543
    .end local v29    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_12
    :goto_6
    sget-boolean v30, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v30, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_17

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v11

    .line 545
    .local v11, "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v11, :cond_16

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_16

    .line 546
    iget v0, v11, Landroid/net/DhcpInfo;->netmask:I

    move/from16 v30, v0

    if-eqz v30, :cond_13

    .line 547
    const v30, 0x7f0e137e

    iget v0, v11, Landroid/net/DhcpInfo;->netmask:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 548
    :cond_13
    iget v0, v11, Landroid/net/DhcpInfo;->gateway:I

    move/from16 v30, v0

    if-eqz v30, :cond_14

    .line 549
    const v30, 0x7f0e0464

    iget v0, v11, Landroid/net/DhcpInfo;->gateway:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 550
    :cond_14
    iget v0, v11, Landroid/net/DhcpInfo;->dns1:I

    move/from16 v30, v0

    if-eqz v30, :cond_15

    .line 551
    const v30, 0x7f0e0460

    iget v0, v11, Landroid/net/DhcpInfo;->dns1:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 552
    :cond_15
    iget v0, v11, Landroid/net/DhcpInfo;->dns2:I

    move/from16 v30, v0

    if-eqz v30, :cond_16

    .line 553
    const v30, 0x7f0e0462

    iget v0, v11, Landroid/net/DhcpInfo;->dns2:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 555
    :cond_16
    if-eqz v18, :cond_17

    .line 556
    invoke-virtual/range {v18 .. v18}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v5

    .line 557
    .local v5, "ap_mac":Ljava/lang/String;
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v30

    if-lez v30, :cond_17

    .line 558
    const v30, 0x7f0e137f

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 561
    .end local v5    # "ap_mac":Ljava/lang/String;
    .end local v11    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_17
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v30

    sget-object v31, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_35

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setSelection(I)V

    .line 563
    const/16 v25, 0x1

    .line 572
    :goto_7
    sget-boolean v30, Lcom/android/settings/Utils;->DISABLE_AUTO_RECONNECT:Z

    if-eqz v30, :cond_19

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v30

    if-eqz v30, :cond_19

    .line 574
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05ea

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    .line 575
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAutoReconnectOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05eb

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    .line 577
    iget v0, v8, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    move/from16 v30, v0

    if-nez v30, :cond_18

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 580
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 583
    :cond_19
    iget-object v0, v8, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    move-object/from16 v30, v0

    const/16 v31, 0x3

    invoke-virtual/range {v30 .. v31}, Ljava/util/BitSet;->get(I)Z

    move-result v30

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    move/from16 v0, v30

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mPrevInteranetUseOnlyMode:Z

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mPrevInteranetUseOnlyMode:Z

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 587
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v30

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_37

    sget-object v30, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_8
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 591
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-nez v30, :cond_1c

    .line 592
    const/16 v30, -0x1

    move/from16 v0, v21

    move/from16 v1, v30

    if-eq v0, v1, :cond_1b

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_38

    .line 593
    :cond_1b
    const/16 v30, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 600
    :cond_1c
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->mIsSharedAp:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1d

    .line 601
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->mExpiration:Ljava/lang/String;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v32

    add-int/lit8 v32, v32, -0x1

    invoke-virtual/range {v30 .. v32}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    .line 602
    .local v14, "expiration":J
    const-wide/16 v30, 0x0

    cmp-long v30, v14, v30

    if-nez v30, :cond_39

    .line 603
    const v30, 0x7f0e0527

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f0e0529

    invoke-virtual/range {v31 .. v32}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 605
    sget-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_1d

    const-string v30, "WifiConfigController"

    const-string v31, "Shared network\nAccess Unlimited"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    .end local v14    # "expiration":J
    :cond_1d
    :goto_a
    invoke-static {}, Lcom/samsung/android/feature/FloatingFeature;->getInstance()Lcom/samsung/android/feature/FloatingFeature;

    move-result-object v30

    const-string v31, "SEC_FLOATING_FEATURE_WLAN_SUPPORT_AP_LINK"

    invoke-virtual/range {v30 .. v31}, Lcom/samsung/android/feature/FloatingFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_1e

    .line 616
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-nez v30, :cond_1e

    check-cast p1, Lcom/android/settings/wifi/WifiDialog;

    .end local p1    # "parent":Lcom/android/settings/wifi/WifiConfigUiBase;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiDialog;->isSetupWizard:Z

    move/from16 v30, v0

    if-nez v30, :cond_1e

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    .line 618
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1e

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->mIsCaptivePortal:Z

    move/from16 v30, v0

    if-nez v30, :cond_3a

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v30

    if-nez v30, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1e

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/BitSet;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Ljava/util/BitSet;->get(I)Z

    move-result v30

    if-nez v30, :cond_1e

    .line 622
    const v30, 0x7f0e03ec

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addGatewayRow(Landroid/view/ViewGroup;I)V

    .line 630
    :cond_1e
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-eqz v30, :cond_20

    .line 631
    :cond_1f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 632
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 633
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 636
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05c8

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05c9

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05dd

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/LinearLayout;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthenticationLayout:Landroid/widget/LinearLayout;

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05de

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 646
    if-eqz v25, :cond_20

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05c9

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/CheckBox;

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05ca

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 652
    :cond_20
    const-string v30, "SIM_TGY"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_21

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-eqz v30, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_21

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const-string v31, "SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v23

    .line 655
    .local v23, "pos":I
    if-ltz v23, :cond_21

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 659
    .end local v23    # "pos":I
    :cond_21
    const-string v30, "SIM"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_23

    .line 660
    const-string v30, "SFR WiFi Mobile"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_23

    .line 661
    sget-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_22

    .line 662
    const-string v30, "WifiConfigController"

    const-string v31, "--Found access point SFR WiFi Mobile"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_23

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const-string v31, "SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v23

    .line 666
    .restart local v23    # "pos":I
    if-ltz v23, :cond_23

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 672
    .end local v23    # "pos":I
    :cond_23
    const-string v30, "AKA"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_25

    .line 673
    const-string v30, "Orange Mobile Wi-Fi"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_25

    .line 674
    sget-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_24

    .line 675
    const-string v30, "WifiConfigController"

    const-string v31, "--Found access point Orange Mobile"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_25

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const-string v31, "AKA"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v23

    .line 679
    .restart local v23    # "pos":I
    if-ltz v23, :cond_25

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 685
    .end local v23    # "pos":I
    :cond_25
    sget-object v30, Lcom/android/settings/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    const-string v31, "SingTel"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_27

    .line 687
    const-string v30, "Singtel WIFI"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_27

    .line 688
    sget-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_26

    .line 689
    const-string v30, "WifiConfigController"

    const-string v31, "--Found access point Singtel WIFI"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_27

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const-string v31, "SIM"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v23

    .line 693
    .restart local v23    # "pos":I
    if-ltz v23, :cond_27

    .line 694
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 699
    .end local v23    # "pos":I
    :cond_27
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v30

    const-string v31, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual/range {v30 .. v31}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v30

    if-eqz v30, :cond_2b

    const-string v30, "AKA"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2b

    .line 700
    const-string v30, "VerizonWiFiAccess"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2b

    .line 701
    sget-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_28

    .line 702
    const-string v30, "WifiConfigController"

    const-string v31, "--Found access point VerizonWiFiAccess"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v30, v0

    const/16 v31, 0x3

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_2b

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2b

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const-string v31, "AKA"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v23

    .line 708
    .restart local v23    # "pos":I
    if-ltz v23, :cond_29

    .line 709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 711
    :cond_29
    sget-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_2a

    const-string v30, "WifiConfigController"

    const-string v31, "not saved VerizonWiFiAccess. default AKA selected"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAdvancedOptionsLayout:Landroid/widget/LinearLayout;

    move-object/from16 v30, v0

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 713
    const/16 v30, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 718
    .end local v23    # "pos":I
    :cond_2b
    const-string v30, "AKA"

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v31

    const-string v32, "CscFeature_Wifi_DefaultEapMethod"

    invoke-virtual/range {v31 .. v32}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2d

    .line 719
    const-string v30, "0001docomo"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2d

    .line 720
    sget-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_2c

    .line 721
    const-string v30, "WifiConfigController"

    const-string v31, "--Found access point 0001docomo"

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    if-eqz v30, :cond_2d

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const-string v31, "AKA"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->getSpinnerItemPosition(Landroid/widget/Spinner;Ljava/lang/String;)I

    move-result v23

    .line 725
    .restart local v23    # "pos":I
    if-ltz v23, :cond_2d

    .line 726
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 731
    .end local v23    # "pos":I
    :cond_2d
    const/4 v6, 0x0

    .line 733
    .local v6, "bCCMode":Z
    const-string v30, "security.mdpp"

    const-string v31, "None"

    invoke-static/range {v30 .. v31}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 734
    .local v22, "mdppProperty":Ljava/lang/String;
    const-string v30, "WifiConfigController"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "mdpp"

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const-string v30, "Enabled"

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_2e

    const-string v30, "Enforcing"

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_30

    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    if-eqz v30, :cond_30

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    move-object/from16 v0, v30

    iget-object v13, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 737
    .local v13, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v13, :cond_30

    .line 738
    invoke-virtual {v13}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v12

    .line 739
    .local v12, "eapMethod":I
    const/16 v30, 0x7

    move/from16 v0, v30

    if-eq v12, v0, :cond_2f

    const/16 v30, 0x8

    move/from16 v0, v30

    if-ne v12, v0, :cond_30

    .line 740
    :cond_2f
    const/4 v6, 0x1

    .line 745
    .end local v12    # "eapMethod":I
    .end local v13    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_30
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-eqz v30, :cond_3d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-nez v30, :cond_3d

    .line 746
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_3c

    .line 747
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    move/from16 v30, v0

    if-nez v30, :cond_3b

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05af

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    if-eqz v30, :cond_31

    .line 750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x6

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/EditText;->requestFocus()Z

    .line 752
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 772
    :cond_31
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d035e

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d0563

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/EditText;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05ae

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/TextView;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const v31, 0x7f0e03df

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setHint(I)V

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->ssidWatcher:Landroid/text/TextWatcher;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v31

    invoke-interface/range {v31 .. v31}, Landroid/text/Editable;->length()I

    move-result v31

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setSelection(I)V

    .line 779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d0566

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setSelection(I)V

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d0566

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    check-cast v30, Landroid/widget/Spinner;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x9

    const/16 v32, 0x0

    invoke-virtual/range {v30 .. v32}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const/16 v31, 0x1

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 791
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0434

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e042e

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 793
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_SAVE:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 794
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto/16 :goto_2

    .line 472
    .end local v6    # "bCCMode":Z
    .end local v22    # "mdppProperty":Ljava/lang/String;
    .end local v25    # "showAdvancedFields":Z
    .restart local p1    # "parent":Lcom/android/settings/wifi/WifiConfigUiBase;
    :cond_32
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 481
    :cond_33
    move-object/from16 v17, v16

    goto/16 :goto_5

    .line 535
    .restart local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    .restart local v25    # "showAdvancedFields":Z
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setSelection(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v11

    .line 538
    .restart local v11    # "dhcpInfo":Landroid/net/DhcpInfo;
    if-eqz v11, :cond_12

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_12

    .line 539
    iget v0, v11, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v30, v0

    if-eqz v30, :cond_12

    .line 540
    const v30, 0x7f0e03e5

    iget v0, v11, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/Formatter;->formatIpAddress(I)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto/16 :goto_6

    .line 564
    .end local v11    # "dhcpInfo":Landroid/net/DhcpInfo;
    :cond_35
    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v30

    sget-object v31, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_36

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const/16 v31, 0x2

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setSelection(I)V

    .line 566
    const/16 v25, 0x1

    goto/16 :goto_7

    .line 568
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    invoke-virtual/range {v30 .. v31}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_7

    .line 587
    .end local v8    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_37
    sget-object v30, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto/16 :goto_8

    .line 595
    :cond_38
    const/16 v30, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_9

    .line 607
    .restart local v14    # "expiration":J
    :cond_39
    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v31

    new-instance v32, Ljava/util/Date;

    move-object/from16 v0, v32

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v31 .. v32}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    invoke-static/range {v31 .. v31}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v31

    new-instance v32, Ljava/util/Date;

    move-object/from16 v0, v32

    invoke-direct {v0, v14, v15}, Ljava/util/Date;-><init>(J)V

    invoke-virtual/range {v31 .. v32}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 609
    .local v10, "dateString":Ljava/lang/String;
    const v30, 0x7f0e0527

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    move-object/from16 v31, v0

    const v32, 0x7f0e052a

    const/16 v33, 0x1

    move/from16 v0, v33

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v33, v0

    const/16 v34, 0x0

    aput-object v10, v33, v34

    invoke-virtual/range {v31 .. v33}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 611
    sget-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v30, :cond_1d

    const-string v30, "WifiConfigController"

    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "Shared network\nExpires on "

    invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 624
    .end local v10    # "dateString":Ljava/lang/String;
    .end local v14    # "expiration":J
    .end local p1    # "parent":Lcom/android/settings/wifi/WifiConfigUiBase;
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/settings/wifi/AccessPoint;->mIsAuthenticated:Z

    move/from16 v30, v0

    if-eqz v30, :cond_1e

    .line 625
    const v30, 0x7f0e03ec

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->addCaptivePortalRow(Landroid/view/ViewGroup;I)V

    goto/16 :goto_b

    .line 760
    .restart local v6    # "bCCMode":Z
    .restart local v22    # "mdppProperty":Ljava/lang/String;
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    if-eqz v30, :cond_31

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    const/16 v31, 0x5

    invoke-virtual/range {v30 .. v31}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Landroid/widget/EditText;->requestFocus()Z

    .line 763
    const/16 v30, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_c

    .line 796
    :cond_3c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0434

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 797
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_2

    .line 798
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto/16 :goto_2

    .line 802
    :cond_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v28

    .line 804
    if-nez v28, :cond_3e

    if-nez v26, :cond_3f

    :cond_3e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-eqz v30, :cond_46

    :cond_3f
    sget-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    if-nez v30, :cond_46

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e042e

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 806
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_40

    .line 807
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 809
    :cond_40
    const/16 v30, 0x1

    sput-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->mForgetCheck:Z

    .line 810
    sget-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    if-eqz v30, :cond_41

    .line 811
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 813
    :cond_41
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_43

    .line 814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-eqz v30, :cond_43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->security:I

    move/from16 v30, v0

    if-nez v30, :cond_43

    .line 815
    const/16 v30, 0x8

    move-object/from16 v0, v16

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 816
    if-eqz v19, :cond_43

    .line 817
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_42

    .line 818
    const v30, 0x7f0e053e

    const/16 v31, 0x1

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v33, v0

    aput-object v33, v31, v32

    move-object/from16 v0, v24

    move/from16 v1, v30

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, v19

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    :cond_42
    const/16 v30, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 859
    :cond_43
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    move/from16 v30, v0

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_2

    .line 860
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4d

    .line 861
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_4c

    .line 862
    :cond_44
    const-string v30, "VerizonWiFiAccess"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4b

    .line 863
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_45

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0431

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 865
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 874
    :cond_45
    :goto_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    goto/16 :goto_2

    .line 825
    :cond_46
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-eq v0, v1, :cond_49

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-eqz v30, :cond_49

    .line 826
    const-string v30, "VZW"

    sget-object v31, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_48

    .line 827
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_47

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0431

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 831
    :cond_47
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 833
    :cond_48
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e042e

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 852
    :cond_49
    const-string v30, "DCM"

    sget-object v31, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4a

    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_4a

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e03b8

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_d

    .line 856
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    move-object/from16 v30, v0

    const v31, 0x7f0d05cb

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    const/16 v31, 0x8

    invoke-virtual/range {v30 .. v31}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_d

    .line 868
    :cond_4b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e03c4

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 869
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_45

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0431

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 871
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto/16 :goto_e

    .line 875
    :cond_4c
    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    move/from16 v30, v0

    if-nez v30, :cond_2

    .line 876
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    .line 877
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0431

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 878
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto/16 :goto_2

    .line 891
    :cond_4d
    const/16 v20, 0x0

    .line 892
    .local v20, "isVendorAp":Z
    sget-boolean v30, Lcom/android/settings/Utils;->REMOVABLE_DEFAULT_AP:Z

    if-nez v30, :cond_4e

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->isVendorAccessPoint()Z

    move-result v20

    .line 895
    :cond_4e
    const-string v30, "DCM"

    sget-object v31, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_4f

    .line 896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e042e

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 897
    :cond_4f
    sget-object v30, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v28

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_2

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_2

    .line 898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v30

    move-object/from16 v0, v30

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->isHS20AP:I

    move/from16 v30, v0

    const/16 v31, 0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-ne v0, v1, :cond_50

    .line 900
    const-string v30, "WifiConfigController"

    const-string v31, "PAsspoint AP does not have forget btn "

    invoke-static/range {v30 .. v31}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 903
    :cond_50
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0431

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 925
    .end local v6    # "bCCMode":Z
    .end local v16    # "group":Landroid/view/ViewGroup;
    .end local v17    # "group2":Landroid/view/ViewGroup;
    .end local v18    # "info":Landroid/net/wifi/WifiInfo;
    .end local v19    # "infoMsg":Landroid/widget/TextView;
    .end local v20    # "isVendorAp":Z
    .end local v21    # "level":I
    .end local v22    # "mdppProperty":Ljava/lang/String;
    .end local v25    # "showAdvancedFields":Z
    .end local v26    # "signalLevel":Ljava/lang/String;
    .end local v28    # "state":Landroid/net/NetworkInfo$DetailedState;
    :cond_51
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const-string v31, ""

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 926
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    goto/16 :goto_3

    .line 929
    :cond_52
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_53

    .line 930
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0431

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 931
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_FORGET:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    .line 933
    :cond_53
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_54

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v30, v0

    if-eqz v30, :cond_55

    const-string v30, "VerizonWiFiAccess"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-nez v30, :cond_55

    .line 934
    :cond_54
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e03c4

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 935
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_EDIT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 937
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e042e

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 938
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CONNECT:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    goto/16 :goto_3

    .line 941
    :cond_56
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e053a

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 942
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_CANCEL:I

    move/from16 v30, v0

    sput v30, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    goto/16 :goto_3

    .line 945
    :cond_57
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    move/from16 v30, v0

    if-nez v30, :cond_58

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-eqz v30, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    if-nez v30, :cond_59

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getLevel()I

    move-result v30

    const/16 v31, -0x1

    move/from16 v0, v30

    move/from16 v1, v31

    if-eq v0, v1, :cond_59

    :cond_58
    sget-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->mSaved:Z

    if-nez v30, :cond_59

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e053a

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 947
    :cond_59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    if-eqz v30, :cond_5c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    move-object/from16 v30, v0

    invoke-virtual/range {v30 .. v30}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v30

    sget-object v31, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    if-ne v0, v1, :cond_5c

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e053a

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 949
    sget-boolean v30, Lcom/android/settings/Utils;->ENABLE_DISC_BUTTON_APNLIST:Z

    if-eqz v30, :cond_5a

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e03b8

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0432

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 952
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    .line 954
    :cond_5a
    sget-boolean v30, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v30, :cond_6

    .line 955
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e12a9

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 956
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsOwnerUser:Z

    move/from16 v30, v0

    if-eqz v30, :cond_5b

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e0431

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 959
    :cond_5b
    const/16 v30, 0x0

    sput-boolean v30, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    goto/16 :goto_3

    .line 962
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v30, v0

    const v31, 0x7f0e053a

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v31

    invoke-interface/range {v30 .. v31}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 15

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1748
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v13, :cond_0

    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 1752
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v14, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v0, v14, :cond_1

    .line 1753
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 1754
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v8

    .line 1755
    .local v8, "result":I
    if-eqz v8, :cond_1

    move v0, v12

    .line 1810
    .end local v8    # "result":I
    :goto_1
    return v0

    .line 1748
    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 1760
    :cond_1
    const/4 v9, 0x0

    .line 1761
    .local v9, "selectedPosition":I
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 1762
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    .line 1764
    :cond_2
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1765
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 1766
    if-ne v9, v13, :cond_9

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    .line 1767
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1768
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1769
    .local v1, "host":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1770
    .local v7, "portStr":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1771
    .local v5, "exclusionList":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 1772
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1774
    :cond_3
    const/4 v2, 0x0

    .line 1775
    .local v2, "port":I
    const/4 v8, 0x0

    .line 1777
    .restart local v8    # "result":I
    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1778
    invoke-static {v1, v7, v5}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 1782
    :goto_2
    if-nez v8, :cond_8

    .line 1783
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v14, 0x7f0d05de

    invoke-virtual {v0, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1784
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1785
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1786
    .local v3, "user":Ljava/lang/String;
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1787
    .local v4, "password":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    move v0, v12

    .line 1788
    goto/16 :goto_1

    .line 1779
    .end local v3    # "user":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 1780
    .local v6, "e":Ljava/lang/NumberFormatException;
    const v8, 0x7f0e0177

    goto :goto_2

    .line 1790
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "user":Ljava/lang/String;
    .restart local v4    # "password":Ljava/lang/String;
    :cond_5
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct/range {v0 .. v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "user":Ljava/lang/String;
    .end local v4    # "password":Ljava/lang/String;
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "portStr":Ljava/lang/String;
    .end local v8    # "result":I
    :cond_6
    :goto_3
    move v0, v13

    .line 1810
    goto/16 :goto_1

    .line 1793
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v2    # "port":I
    .restart local v5    # "exclusionList":Ljava/lang/String;
    .restart local v7    # "portStr":Ljava/lang/String;
    .restart local v8    # "result":I
    :cond_7
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v1, v2, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3

    :cond_8
    move v0, v12

    .line 1796
    goto/16 :goto_1

    .line 1798
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v5    # "exclusionList":Ljava/lang/String;
    .end local v7    # "portStr":Ljava/lang/String;
    .end local v8    # "result":I
    :cond_9
    const/4 v0, 0x2

    if-ne v9, v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 1799
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1800
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    .line 1801
    .local v11, "uriSequence":Ljava/lang/CharSequence;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move v0, v12

    .line 1802
    goto/16 :goto_1

    .line 1804
    :cond_a
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1805
    .local v10, "uri":Landroid/net/Uri;
    if-nez v10, :cond_b

    move v0, v12

    .line 1806
    goto/16 :goto_1

    .line 1808
    :cond_b
    new-instance v0, Landroid/net/ProxyInfo;

    invoke-direct {v0, v10}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    goto :goto_3
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 30
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 3189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 3191
    .local v10, "context":Landroid/content/Context;
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v27

    const/16 v28, 0x3f2

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 3192
    .local v9, "certs":[Ljava/lang/String;
    if-eqz v9, :cond_0

    array-length v0, v9

    move/from16 v27, v0

    if-nez v27, :cond_3

    .line 3193
    :cond_0
    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v9, v0, [Ljava/lang/String;

    .end local v9    # "certs":[Ljava/lang/String;
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v9, v27

    .line 3218
    .restart local v9    # "certs":[Ljava/lang/String;
    :goto_0
    new-instance v12, Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3219
    .local v12, "finalCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v27, "WifiConfigController"

    const-string v28, "****Trying to Load certificates from CCM*****"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3220
    const-string v27, "USRPKEY_"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 3222
    :try_start_0
    const-string v27, "knox_ccm_policy"

    invoke-static/range {v27 .. v27}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    .line 3223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v27, v0

    if-eqz v27, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getCCMVersion()Ljava/lang/String;

    move-result-object v8

    .line 3224
    .local v8, "ccmVersion":Ljava/lang/String;
    :goto_1
    const-string v27, "3.0"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    .line 3225
    const-string v27, "WifiConfigController"

    const-string v28, "Fetching WiFi aliases from CCM"

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mCCMService:Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lcom/sec/enterprise/knox/ccm/IClientCertificateManager;->getAliasesForWiFi()Ljava/util/List;

    move-result-object v7

    .line 3227
    .local v7, "ccmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v7, :cond_1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    .line 3228
    :cond_1
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    .line 3229
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v27

    if-eqz v27, :cond_9

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3230
    .local v6, "ccmCertAlias":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v27, v0

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " [KNOX]"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-interface/range {v27 .. v28}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 3234
    .end local v6    # "ccmCertAlias":Ljava/lang/String;
    .end local v7    # "ccmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "ccmVersion":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    :catch_0
    move-exception v11

    .line 3235
    .local v11, "e":Landroid/os/RemoteException;
    const-string v27, "WifiConfigController"

    const-string v28, "Failed at ClientCertificateManager API getAliasesForWiFi-Exception "

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-static {v0, v1, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3238
    .end local v11    # "e":Landroid/os/RemoteException;
    :cond_2
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v12, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "certs":[Ljava/lang/String;
    check-cast v9, [Ljava/lang/String;

    .line 3242
    .restart local v9    # "certs":[Ljava/lang/String;
    const-string v27, "USRPKEY_"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    .line 3243
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->sawUcmPrivateKeyForWifi()Ljava/util/List;

    move-result-object v22

    .line 3244
    .local v22, "ucmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v22, :cond_a

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_a

    .line 3245
    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v19

    .line 3246
    .local v19, "size":I
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    .line 3247
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    .line 3250
    :try_start_1
    invoke-static {}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v25

    .line 3251
    .local v25, "util":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_4
    move/from16 v0, v19

    if-ge v14, v0, :cond_a

    .line 3252
    move-object/from16 v0, v22

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 3253
    .local v24, "uriTypeAlias":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getSource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 3254
    .local v20, "source":Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getRawAlias(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 3255
    .local v18, "rawAlias":Ljava/lang/String;
    move-object/from16 v0, v25

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getFriendlyName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3256
    .local v13, "friendlyName":Ljava/lang/String;
    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v27

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ["

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "]"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 3257
    .local v21, "tempAlias":Ljava/lang/String;
    const-string v27, "WifiConfigController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "add UCM List : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/settings/wifi/WifiConfigController;->makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 3259
    .local v26, "wifiUri":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3251
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 3196
    .end local v12    # "finalCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v13    # "friendlyName":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v18    # "rawAlias":Ljava/lang/String;
    .end local v19    # "size":I
    .end local v20    # "source":Ljava/lang/String;
    .end local v21    # "tempAlias":Ljava/lang/String;
    .end local v22    # "ucmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v24    # "uriTypeAlias":Ljava/lang/String;
    .end local v25    # "util":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;
    .end local v26    # "wifiUri":Ljava/lang/String;
    :cond_3
    const-string v27, "USRPKEY_"

    move-object/from16 v0, p2

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 3197
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3198
    .local v5, "aux":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v27

    const-string v28, "USRCERT_"

    const/16 v29, 0x3f2

    invoke-virtual/range {v27 .. v29}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v16

    .line 3199
    .local v16, "installedCerts":[Ljava/lang/String;
    if-eqz v16, :cond_6

    .line 3200
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_5
    array-length v0, v9

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_6

    .line 3201
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_6
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_5

    .line 3202
    aget-object v27, v9, v14

    aget-object v28, v16, v17

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    .line 3203
    aget-object v27, v9, v14

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3201
    :cond_4
    add-int/lit8 v17, v17, 0x1

    goto :goto_6

    .line 3200
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    .line 3209
    .end local v14    # "i":I
    .end local v17    # "j":I
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "certs":[Ljava/lang/String;
    check-cast v9, [Ljava/lang/String;

    .line 3212
    .end local v5    # "aux":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "installedCerts":[Ljava/lang/String;
    .restart local v9    # "certs":[Ljava/lang/String;
    :cond_7
    array-length v0, v9

    move/from16 v27, v0

    add-int/lit8 v27, v27, 0x1

    move/from16 v0, v27

    new-array v4, v0, [Ljava/lang/String;

    .line 3213
    .local v4, "array":[Ljava/lang/String;
    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    move-object/from16 v28, v0

    aput-object v28, v4, v27

    .line 3214
    const/16 v27, 0x0

    const/16 v28, 0x1

    array-length v0, v9

    move/from16 v29, v0

    move/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-static {v9, v0, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3215
    move-object v9, v4

    goto/16 :goto_0

    .line 3223
    .end local v4    # "array":[Ljava/lang/String;
    .restart local v12    # "finalCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 3232
    .restart local v7    # "ccmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "ccmVersion":Ljava/lang/String;
    .restart local v15    # "i$":Ljava/util/Iterator;
    :cond_9
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_3

    .line 3262
    .end local v7    # "ccmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v8    # "ccmVersion":Ljava/lang/String;
    .end local v15    # "i$":Ljava/util/Iterator;
    .restart local v19    # "size":I
    .restart local v22    # "ucmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v11

    .line 3263
    .local v11, "e":Ljava/lang/Exception;
    const-string v27, "WifiConfigController"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "exception happened : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v11}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3264
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    .line 3265
    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    .line 3266
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 3270
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v19    # "size":I
    .end local v22    # "ucmCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v27, v0

    if-eqz v27, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_b

    .line 3271
    new-instance v23, Ljava/util/ArrayList;

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v27

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3272
    .local v23, "ucmFinalCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3273
    invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I

    move-result v27

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "certs":[Ljava/lang/String;
    check-cast v9, [Ljava/lang/String;

    .line 3277
    .end local v23    # "ucmFinalCertList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "certs":[Ljava/lang/String;
    :cond_b
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v27, 0x7f04027b

    move/from16 v0, v27

    invoke-direct {v3, v10, v0, v9}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 3279
    .local v3, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v27, 0x1090009

    move/from16 v0, v27

    invoke-virtual {v3, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 3280
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3281
    return-void
.end method

.method private makeUCMWifiURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "rawAlias"    # Ljava/lang/String;

    .prologue
    .line 3324
    new-instance v0, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    invoke-direct {v0, p1}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    .line 3325
    .local v0, "UcmUriBuilder":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    const/16 v3, 0x3f2

    invoke-virtual {v2, v3}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setAlias(Ljava/lang/String;)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v1

    .line 3326
    .local v1, "targetUri":Ljava/lang/String;
    return-object v1
.end method

.method private restartFocusedViewInput()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3143
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3144
    .local v0, "focusedView":Landroid/view/View;
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v1, :cond_1

    .line 3145
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3146
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 3175
    :cond_0
    :goto_0
    return-void

    .line 3147
    :cond_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    .line 3148
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3149
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_0

    .line 3150
    :cond_2
    if-nez v0, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_3

    .line 3151
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3152
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_0

    .line 3153
    :cond_3
    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    .line 3154
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 3155
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_0

    .line 3156
    :cond_4
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    .line 3157
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 3158
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_0

    .line 3159
    :cond_5
    if-eqz v0, :cond_0

    .line 3160
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3167
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->restartViewInput(Landroid/view/View;)V

    goto :goto_0

    .line 3169
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3170
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 3171
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_0
.end method

.method private restartViewInput(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 3178
    if-eqz p1, :cond_0

    .line 3179
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 3180
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 3186
    :cond_0
    return-void
.end method

.method private sawUcmPrivateKeyForWifi()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x1

    .line 3284
    const/16 v5, 0x3e8

    .line 3285
    .local v5, "senderUid":I
    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_0

    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "sawUcmPrivateKeyForWifi : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3286
    :cond_0
    new-instance v9, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    const-string v10, "KNOX"

    invoke-direct {v9, v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x3

    invoke-virtual {v9, v10}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setResourceId(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->setUid(I)Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil$UcmUriBuilder;->build()Ljava/lang/String;

    move-result-object v7

    .line 3287
    .local v7, "uri":Ljava/lang/String;
    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_1

    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uri : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3288
    :cond_1
    invoke-static {}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->getInstance()Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;

    move-result-object v3

    .line 3290
    .local v3, "credMgr":Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;
    if-nez v3, :cond_3

    .line 3291
    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_2

    const-string v9, "WifiConfigController"

    const-string v10, "UniversalCredentialUtil is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3320
    :cond_2
    :goto_0
    return-object v1

    .line 3295
    :cond_3
    invoke-virtual {v3, v7, v12}, Lcom/sec/enterprise/knox/ucm/core/UniversalCredentialUtil;->saw(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v2

    .line 3296
    .local v2, "bundle":Landroid/os/Bundle;
    if-eqz v2, :cond_2

    .line 3300
    const-string v9, "stringarrayresponse"

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 3301
    .local v8, "uris":[Ljava/lang/String;
    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-ne v9, v12, :cond_6

    .line 3302
    if-eqz v8, :cond_7

    .line 3303
    array-length v9, v8

    if-eqz v9, :cond_5

    .line 3304
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, v8

    if-ge v4, v9, :cond_6

    .line 3305
    aget-object v6, v8, v4

    .line 3306
    .local v6, "tempUri":Ljava/lang/String;
    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_4

    const-string v9, "WifiConfigController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "tempUri : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3304
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 3309
    .end local v4    # "i":I
    .end local v6    # "tempUri":Ljava/lang/String;
    :cond_5
    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_6

    const-string v9, "WifiConfigController"

    const-string v10, "uris length is 0"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3315
    :cond_6
    :goto_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3316
    .local v1, "aliasListFinal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v8, :cond_8

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 3318
    .local v0, "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 3319
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3312
    .end local v0    # "aliasList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "aliasListFinal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    sget-boolean v9, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v9, :cond_6

    const-string v9, "WifiConfigController"

    const-string v10, "uris is null"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3316
    .restart local v1    # "aliasListFinal":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_3
.end method

.method private setAdapterToSpinner(Landroid/widget/Spinner;I)V
    .locals 4
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "resId"    # I

    .prologue
    .line 3028
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v2, 0x7f04027b

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 3029
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 3030
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3031
    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .prologue
    .line 2488
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2489
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2490
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2492
    :cond_0
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .prologue
    .line 2478
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05b8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2479
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2480
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .prologue
    .line 2495
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05bc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2496
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2497
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2499
    :cond_0
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 2580
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 2581
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2583
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2584
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05c4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2585
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .prologue
    .line 2473
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2474
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2475
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/Spinner;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3330
    if-eqz p2, :cond_0

    .line 3332
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 3333
    .local v0, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 3334
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3335
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 3340
    .end local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 3333
    .restart local v0    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private setUserCertInvisible()V
    .locals 2

    .prologue
    .line 2483
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05ba

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2484
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2485
    return-void
.end method

.method private setVisibility(II)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "visibility"    # I

    .prologue
    .line 3021
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3022
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 3023
    invoke-virtual {v0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 3025
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 11
    .param p1, "eapMethod"    # I

    .prologue
    const v10, 0x7f0d05b6

    const/4 v9, 0x5

    const v8, 0x7f0d05b2

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 2342
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v4

    const-string v5, "CscFeature_Wifi_SupportEapAka"

    invoke-virtual {v4, v5}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_6

    const-string v4, "VerizonWiFiAccess"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_6

    if-ne p1, v9, :cond_6

    .line 2343
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 2345
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v4}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    iget-object v1, v4, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 2346
    .local v1, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    if-eqz v1, :cond_0

    .line 2347
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v3

    .line 2348
    .local v3, "selectedEapMethod":I
    if-ne v3, v9, :cond_0

    .line 2349
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2350
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05b1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2368
    .end local v1    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v3    # "selectedEapMethod":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05b8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2369
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05c2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2370
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05c4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2373
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2375
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v4}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2376
    .local v0, "context":Landroid/content/Context;
    packed-switch p1, :pswitch_data_0

    .line 2461
    :cond_1
    :goto_1
    sget-boolean v4, Lcom/android/settings/Utils;->ENABLE_SIM_SELECTION_UI:Z

    if-eqz v4, :cond_3

    .line 2462
    const/4 v4, 0x4

    if-eq p1, v4, :cond_2

    if-ne p1, v9, :cond_d

    .line 2463
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSimCheckFields()V

    .line 2470
    :cond_3
    :goto_2
    return-void

    .line 2353
    .end local v0    # "context":Landroid/content/Context;
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v4, v4, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    .line 2355
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2356
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05b1

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2358
    :cond_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2359
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2363
    :cond_6
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2364
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05bc

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2379
    .restart local v0    # "context":Landroid/content/Context;
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 2380
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 2381
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 2382
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto :goto_1

    .line 2385
    :pswitch_1
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05ba

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2386
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 2387
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 2388
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto :goto_1

    .line 2392
    :pswitch_2
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v4, v5, :cond_7

    .line 2393
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 2394
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2396
    :cond_7
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2397
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05be

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2398
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 2399
    sget-boolean v4, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v4, :cond_1

    .line 2400
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v4, :cond_1

    const-string v4, "CMCC"

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v5, v5, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2401
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 2402
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 2403
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    goto/16 :goto_1

    .line 2409
    :pswitch_3
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v4, v5, :cond_8

    .line 2410
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_FULL_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 2411
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2413
    :cond_8
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2414
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05be

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2415
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    goto/16 :goto_1

    .line 2420
    :pswitch_4
    const/4 v2, 0x0

    .line 2421
    .local v2, "immView":Landroid/view/inputmethod/InputMethodManager;
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_b

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    if-nez v4, :cond_b

    .line 2422
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v4, :cond_9

    .line 2423
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 2424
    .restart local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_9

    .line 2425
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2428
    :cond_9
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v4, :cond_a

    .line 2429
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 2430
    .restart local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_a

    .line 2431
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2434
    :cond_a
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v4, :cond_b

    .line 2435
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "input_method"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 2436
    .restart local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_b

    .line 2437
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2441
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 2442
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 2443
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 2444
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setIdentityInvisible()V

    .line 2445
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 2446
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    goto/16 :goto_1

    .line 2449
    .end local v2    # "immView":Landroid/view/inputmethod/InputMethodManager;
    :pswitch_5
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05b4

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2451
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    if-eq v4, v5, :cond_c

    .line 2452
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->PHASE2_PEAP_ADAPTER:Landroid/widget/ArrayAdapter;

    iput-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 2453
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2455
    :cond_c
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2456
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 2457
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    goto/16 :goto_1

    .line 2466
    :cond_d
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 2467
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0d05ec

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2376
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 30

    .prologue
    .line 2696
    const/16 v17, 0x0

    .line 2698
    .local v17, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05cb

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 2701
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v17

    .line 2704
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1e

    .line 2705
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05cd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2706
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-nez v2, :cond_1

    .line 2707
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05ce

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    .line 2708
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2710
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2711
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2712
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05cf

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    .line 2713
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2714
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2717
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05d0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 2719
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2720
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2721
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2722
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05d1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    .line 2723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2725
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05d2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    .line 2728
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2729
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings/wifi/WifiConfigController$IpAddressTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2731
    :cond_1
    if-eqz v17, :cond_9

    .line 2732
    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v29

    .line 2733
    .local v29, "staticConfig":Landroid/net/StaticIpConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v2, v4, :cond_18

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    if-eqz v2, :cond_18

    .line 2734
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 2735
    .local v25, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    const/16 v27, 0x0

    .line 2736
    .local v27, "mIpv4SetupFlag":Z
    :cond_2
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2737
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/net/LinkAddress;

    .line 2738
    .local v26, "linkAddress":Landroid/net/LinkAddress;
    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v15

    .line 2739
    .local v15, "address":Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showIpConfigFields ip "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    :cond_3
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2742
    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    .line 2743
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2744
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2746
    const/16 v27, 0x1

    .line 2759
    .end local v15    # "address":Ljava/lang/String;
    .end local v26    # "linkAddress":Landroid/net/LinkAddress;
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 2761
    const/16 v27, 0x0

    .line 2762
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :cond_5
    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Landroid/net/RouteInfo;

    .line 2763
    .local v28, "route":Landroid/net/RouteInfo;
    invoke-virtual/range {v28 .. v28}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    .line 2764
    .restart local v15    # "address":Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v2, :cond_6

    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showIpConfigFields gw "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    :cond_6
    invoke-virtual/range {v28 .. v28}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2767
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 2768
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2769
    const/16 v27, 0x1

    .line 2779
    .end local v15    # "address":Ljava/lang/String;
    .end local v28    # "route":Landroid/net/RouteInfo;
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 2780
    .local v19, "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    const/16 v18, 0x0

    .line 2781
    .local v18, "dns":Ljava/net/InetAddress;
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 2782
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dns":Ljava/net/InetAddress;
    check-cast v18, Ljava/net/InetAddress;

    .line 2783
    .restart local v18    # "dns":Ljava/net/InetAddress;
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 2784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2795
    :cond_8
    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2796
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dns":Ljava/net/InetAddress;
    check-cast v18, Ljava/net/InetAddress;

    .line 2797
    .restart local v18    # "dns":Ljava/net/InetAddress;
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2798
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2883
    .end local v18    # "dns":Ljava/net/InetAddress;
    .end local v19    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v25    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v27    # "mIpv4SetupFlag":Z
    .end local v29    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_f

    .line 2884
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2885
    .local v3, "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 2886
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isEnterpriseNetwork"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 2888
    .local v20, "enterpriseCr":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "getAllowUserPolicyChanges"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 2890
    .local v16, "allowCr":Landroid/database/Cursor;
    if-eqz v20, :cond_d

    if-eqz v16, :cond_d

    .line 2892
    :try_start_0
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2893
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2894
    const-string v2, "isEnterpriseNetwork"

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v20

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "getAllowUserPolicyChanges"

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v16

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 2897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v2, :cond_d

    .line 2899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2900
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2901
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2902
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 2903
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2910
    :cond_d
    if-eqz v20, :cond_e

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 2911
    :cond_e
    if-eqz v16, :cond_f

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 2914
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v16    # "allowCr":Landroid/database/Cursor;
    .end local v20    # "enterpriseCr":Landroid/database/Cursor;
    :cond_f
    return-void

    .line 2748
    .restart local v15    # "address":Ljava/lang/String;
    .restart local v25    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .restart local v26    # "linkAddress":Landroid/net/LinkAddress;
    .restart local v27    # "mIpv4SetupFlag":Z
    .restart local v29    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_10
    if-nez v27, :cond_2

    .line 2749
    const/4 v13, 0x1

    .line 2750
    .local v13, "GET_IPV4_ADDR":I
    const/4 v14, 0x2

    .line 2751
    .local v14, "GET_PREFIX_LENGTH":I
    invoke-virtual/range {v26 .. v26}, Landroid/net/LinkAddress;->toString()Ljava/lang/String;

    move-result-object v24

    .line 2753
    .local v24, "ipv6Address":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v13}, Lcom/android/settings/wifi/WifiConfigController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    .line 2754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2755
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v14}, Lcom/android/settings/wifi/WifiConfigController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 2771
    .end local v13    # "GET_IPV4_ADDR":I
    .end local v14    # "GET_PREFIX_LENGTH":I
    .end local v24    # "ipv6Address":Ljava/lang/String;
    .end local v26    # "linkAddress":Landroid/net/LinkAddress;
    .restart local v21    # "i$":Ljava/util/Iterator;
    .restart local v28    # "route":Landroid/net/RouteInfo;
    :cond_11
    if-nez v27, :cond_5

    .line 2772
    const/4 v13, 0x1

    .line 2773
    .restart local v13    # "GET_IPV4_ADDR":I
    move-object/from16 v0, p0

    invoke-direct {v0, v15, v13}, Lcom/android/settings/wifi/WifiConfigController;->getIpv4Address(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v23

    .line 2774
    .local v23, "ipv4Address":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 2786
    .end local v13    # "GET_IPV4_ADDR":I
    .end local v15    # "address":Ljava/lang/String;
    .end local v23    # "ipv4Address":Ljava/lang/String;
    .end local v28    # "route":Landroid/net/RouteInfo;
    .restart local v18    # "dns":Ljava/net/InetAddress;
    .restart local v19    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    :cond_12
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    .line 2787
    .restart local v15    # "address":Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v2, :cond_13

    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showIpConfigFields dns1 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    :cond_13
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 2789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2791
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 2800
    .end local v15    # "address":Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v15

    .line 2801
    .restart local v15    # "address":Ljava/lang/String;
    sget-boolean v2, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v2, :cond_16

    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showIpConfigFields dns2 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    :cond_16
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/wifi/WifiConfigController;->checkIp4vAddress(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2803
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v2, v15}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2805
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2810
    .end local v15    # "address":Ljava/lang/String;
    .end local v18    # "dns":Ljava/net/InetAddress;
    .end local v19    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v25    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/net/LinkAddress;>;"
    .end local v27    # "mIpv4SetupFlag":Z
    :cond_18
    if-eqz v29, :cond_9

    .line 2811
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v2, :cond_19

    .line 2812
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    .line 2813
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2814
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-interface {v4}, Landroid/text/Editable;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setSelection(I)V

    .line 2815
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    invoke-virtual {v4}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2818
    :cond_19
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v2, :cond_1a

    .line 2819
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    move-object/from16 v0, v29

    iget-object v4, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2822
    :cond_1a
    move-object/from16 v0, v29

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 2823
    .restart local v19    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    const/16 v18, 0x0

    .line 2824
    .restart local v18    # "dns":Ljava/net/InetAddress;
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 2825
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dns":Ljava/net/InetAddress;
    check-cast v18, Ljava/net/InetAddress;

    .line 2826
    .restart local v18    # "dns":Ljava/net/InetAddress;
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2827
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2832
    :cond_1b
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 2833
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    .end local v18    # "dns":Ljava/net/InetAddress;
    check-cast v18, Ljava/net/InetAddress;

    .line 2834
    .restart local v18    # "dns":Ljava/net/InetAddress;
    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 2835
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2829
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 2837
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual/range {v18 .. v18}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 2844
    .end local v18    # "dns":Ljava/net/InetAddress;
    .end local v19    # "dnsIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/net/InetAddress;>;"
    .end local v29    # "staticConfig":Landroid/net/StaticIpConfiguration;
    :cond_1e
    const/16 v22, 0x0

    .line 2845
    .local v22, "immView":Landroid/view/inputmethod/InputMethodManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v2, :cond_23

    .line 2846
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_23

    .line 2847
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v2, :cond_1f

    .line 2848
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v22, Landroid/view/inputmethod/InputMethodManager;

    .line 2849
    .restart local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v22, :cond_1f

    .line 2850
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2853
    :cond_1f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    if-eqz v2, :cond_20

    .line 2854
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v22, Landroid/view/inputmethod/InputMethodManager;

    .line 2855
    .restart local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v22, :cond_20

    .line 2856
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2859
    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v2, :cond_21

    .line 2860
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v22, Landroid/view/inputmethod/InputMethodManager;

    .line 2861
    .restart local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v22, :cond_21

    .line 2862
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2865
    :cond_21
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v2, :cond_22

    .line 2866
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v22, Landroid/view/inputmethod/InputMethodManager;

    .line 2867
    .restart local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v22, :cond_22

    .line 2868
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2871
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v2, :cond_23

    .line 2872
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    .end local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    check-cast v22, Landroid/view/inputmethod/InputMethodManager;

    .line 2873
    .restart local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v22, :cond_23

    .line 2874
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2879
    :cond_23
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05cd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 2906
    .end local v22    # "immView":Landroid/view/inputmethod/InputMethodManager;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v16    # "allowCr":Landroid/database/Cursor;
    .restart local v20    # "enterpriseCr":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    throw v2
.end method

.method private showKeyMgmtFields()V
    .locals 8

    .prologue
    const v7, 0x7f0d05e6

    const v6, 0x7f0d05e4

    const v5, 0x7f0d05e7

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 2588
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v0, :cond_4

    .line 2589
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 2591
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2596
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2597
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2601
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2603
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2604
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2652
    :cond_1
    :goto_1
    return-void

    .line 2593
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2606
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 2609
    :cond_4
    const-string v0, "WifiConfigController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "accessPoint.keyMgmts: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2610
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2613
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2619
    :goto_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2620
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2621
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2623
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 2624
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2625
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v0, :cond_7

    .line 2626
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05e5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2627
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2633
    :cond_7
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    .line 2635
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v0, v0, Lcom/android/settings/wifi/AccessPoint;->keyMgmts:Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2636
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2637
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2639
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-nez v0, :cond_1

    .line 2640
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 2641
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2642
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v0, :cond_1

    .line 2643
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2644
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05e8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto/16 :goto_1

    .line 2615
    :cond_8
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 2649
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showProxyFields()V
    .locals 19

    .prologue
    .line 2917
    const/4 v13, 0x0

    .line 2919
    .local v13, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05d3

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2921
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 2922
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v13

    .line 2925
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    .line 2926
    const v1, 0x7f0d05d6

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2927
    const v1, 0x7f0d05d9

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2928
    const v1, 0x7f0d05d7

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2929
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->updateShowProxyAuthenticationOptions()V

    .line 2930
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 2931
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05da

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 2932
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2933
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2934
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2935
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05db

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 2936
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2937
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2938
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    const/4 v3, 0x5

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 2939
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05dc

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 2940
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2941
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2942
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 2943
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05e0

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    .line 2944
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2945
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05e1

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    .line 2946
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2949
    :cond_1
    if-eqz v13, :cond_2

    .line 2950
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v17

    .line 2951
    .local v17, "proxyProperties":Landroid/net/ProxyInfo;
    if-eqz v17, :cond_2

    .line 2952
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2953
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2954
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2955
    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getUsername()Ljava/lang/String;

    move-result-object v18

    .line 2956
    .local v18, "user":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Landroid/net/ProxyInfo;->getPassword()Ljava/lang/String;

    move-result-object v15

    .line 2957
    .local v15, "password":Ljava/lang/String;
    if-eqz v18, :cond_2

    if-eqz v15, :cond_2

    .line 2958
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2959
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2960
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05de

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2961
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05df

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2991
    .end local v15    # "password":Ljava/lang/String;
    .end local v17    # "proxyProperties":Landroid/net/ProxyInfo;
    .end local v18    # "user":Ljava/lang/String;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v1, v1, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_8

    .line 2992
    const-string v1, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2993
    .local v2, "uri":Landroid/net/Uri;
    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v3, v3, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v5, v1

    .line 2994
    .local v5, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "isEnterpriseNetwork"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2996
    .local v14, "enterpriseCr":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const/4 v8, 0x0

    const-string v9, "getAllowUserPolicyChanges"

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v2

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2998
    .local v12, "allowCr":Landroid/database/Cursor;
    if-eqz v14, :cond_6

    if-eqz v12, :cond_6

    .line 3000
    :try_start_0
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3001
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3002
    const-string v1, "isEnterpriseNetwork"

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v14, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "getAllowUserPolicyChanges"

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v12, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 3005
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 3006
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3007
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3008
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3014
    :cond_6
    if-eqz v14, :cond_7

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 3015
    :cond_7
    if-eqz v12, :cond_8

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 3018
    .end local v2    # "uri":Landroid/net/Uri;
    .end local v5    # "selectionArgs":[Ljava/lang/String;
    .end local v12    # "allowCr":Landroid/database/Cursor;
    .end local v14    # "enterpriseCr":Landroid/database/Cursor;
    :cond_8
    return-void

    .line 2965
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_c

    .line 2966
    const v1, 0x7f0d05d6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2967
    const v1, 0x7f0d05d9

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2968
    const v1, 0x7f0d05d7

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2969
    const v1, 0x7f0d05df

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2970
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05de

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2972
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v1, :cond_a

    .line 2973
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05d8

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 2974
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2976
    :cond_a
    if-eqz v13, :cond_b

    .line 2977
    invoke-virtual {v13}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v16

    .line 2978
    .local v16, "proxyInfo":Landroid/net/ProxyInfo;
    if-eqz v16, :cond_b

    .line 2979
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2982
    .end local v16    # "proxyInfo":Landroid/net/ProxyInfo;
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_0

    .line 2984
    :cond_c
    const v1, 0x7f0d05d6

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2985
    const v1, 0x7f0d05d9

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2986
    const v1, 0x7f0d05d7

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 2987
    const v1, 0x7f0d05df

    const/16 v3, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v3}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    goto/16 :goto_0

    .line 3010
    .restart local v2    # "uri":Landroid/net/Uri;
    .restart local v5    # "selectionArgs":[Ljava/lang/String;
    .restart local v12    # "allowCr":Landroid/database/Cursor;
    .restart local v14    # "enterpriseCr":Landroid/database/Cursor;
    :catchall_0
    move-exception v1

    throw v1
.end method

.method private showSecurityFields()V
    .locals 35

    .prologue
    .line 1943
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0a008a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v33

    .line 1946
    .local v33, "spinnerTintColor":I
    const-string v2, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1947
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v2, :cond_2

    .line 1948
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05af

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_1

    .line 1950
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1951
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1953
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v24

    .line 1954
    .local v24, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v24, :cond_0

    .line 1955
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1958
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 2318
    .end local v24    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_1
    :goto_0
    return-void

    .line 1962
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    .line 1963
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1964
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1965
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 2005
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05af

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2007
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v2, :cond_7

    .line 2008
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d0522

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    .line 2009
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    .line 2010
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v4, 0x7f0e03f5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 2011
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2012
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2013
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2014
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_4

    .line 2015
    const-string v2, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v2, :cond_4

    .line 2016
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 2020
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d056c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v26

    check-cast v26, Landroid/widget/CheckBox;

    .line 2021
    .local v26, "mGetPasswordHidden":Landroid/widget/CheckBox;
    if-eqz v26, :cond_5

    .line 2023
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2024
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getPasswordHidden"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 2026
    .local v18, "cr":Landroid/database/Cursor;
    if-eqz v18, :cond_5

    .line 2028
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2029
    const-string v2, "getPasswordHidden"

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2030
    const/16 v2, 0x8

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 2031
    const/4 v2, 0x0

    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2036
    :goto_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    .line 2044
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v18    # "cr":Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d0522

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    .line 2045
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    .line 2046
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v4, 0x7f0e03f5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 2047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2048
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->passwordWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2050
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2051
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowPasswordLayout:Landroid/widget/LinearLayout;

    .line 2052
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d056c

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2054
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_7

    .line 2055
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-eqz v2, :cond_6

    .line 2056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v17

    .line 2057
    .local v17, "context":Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const v4, 0x7f0e0b8a

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2058
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0a007d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2059
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2062
    .end local v17    # "context":Landroid/content/Context;
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v4, 0x7f0e03fb

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setHint(I)V

    .line 2066
    .end local v26    # "mGetPasswordHidden":Landroid/widget/CheckBox;
    :cond_7
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v2, :cond_9

    .line 2067
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_11

    .line 2068
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2080
    :cond_8
    :goto_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x5

    if-eq v2, v4, :cond_12

    .line 2081
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2095
    :cond_9
    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-eq v2, v4, :cond_13

    .line 2096
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05b0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2097
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c2

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2098
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c4

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1969
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v2, :cond_e

    .line 1970
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05af

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1971
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_c

    .line 1972
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_d

    .line 1974
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1978
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1980
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v24

    .line 1981
    .restart local v24    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v24, :cond_b

    .line 1982
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1985
    :cond_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 1987
    .end local v24    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_c
    sget-boolean v2, Lcom/android/settings/Utils;->SUPPORT_WAPI:Z

    if-eqz v2, :cond_1

    .line 1988
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1976
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_5

    .line 1991
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x5

    if-ne v2, v4, :cond_f

    .line 1992
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 1993
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 1994
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 1995
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_1

    .line 1998
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getWindowVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 1999
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2000
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 2001
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_1

    .line 2033
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v18    # "cr":Landroid/database/Cursor;
    .restart local v26    # "mGetPasswordHidden":Landroid/widget/CheckBox;
    :cond_10
    const/4 v2, 0x0

    :try_start_1
    move-object/from16 v0, v26

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 2036
    :catchall_0
    move-exception v2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v2

    .line 2070
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v18    # "cr":Landroid/database/Cursor;
    .end local v26    # "mGetPasswordHidden":Landroid/widget/CheckBox;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2071
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c1

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    .line 2072
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2074
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_8

    .line 2075
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v16

    .line 2076
    .local v16, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    move-object/from16 v0, v16

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_3

    .line 2083
    .end local v16    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05af

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2084
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2085
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    .line 2086
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2087
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05c7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    .line 2088
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2090
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    const-string v4, "WAPIAS_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2091
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    const-string v4, "WAPIUSR_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 2101
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05b0

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2103
    const/4 v15, 0x0

    .line 2105
    .local v15, "bCCMode":Z
    const-string v2, "security.mdpp"

    const-string v4, "None"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 2106
    .local v29, "mdppProperty":Ljava/lang/String;
    const-string v2, "Enabled"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_14

    const-string v2, "Enforcing"

    move-object/from16 v0, v29

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2107
    :cond_14
    const/4 v15, 0x1

    .line 2109
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v2, :cond_2f

    .line 2110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05b3

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 2111
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2112
    new-instance v25, Ljava/util/ArrayList;

    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 2113
    .local v25, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v4, "CMCC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2114
    const-string v2, "PEAP"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2116
    const-string v2, "SIM"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2133
    :cond_16
    :goto_6
    new-instance v13, Landroid/widget/ArrayAdapter;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f04027b

    move-object/from16 v0, v25

    invoke-direct {v13, v2, v4, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 2134
    .local v13, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v2, 0x1090009

    invoke-virtual {v13, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 2135
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v13}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 2136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 2137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05b5

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    .line 2138
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2139
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const v4, 0x7f110032

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 2140
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05b7

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 2141
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2142
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const v4, 0x7f110034

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setAdapterToSpinner(Landroid/widget/Spinner;I)V

    .line 2143
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05b9

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 2144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2145
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05bb

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 2146
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    move/from16 v0, v33

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 2147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05bd

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    .line 2148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2149
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2150
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2151
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05bf

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    .line 2152
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 2153
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2154
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/settings/wifi/WifiConfigController$WifiEapIdTextWatcher;-><init>(Lcom/android/settings/wifi/WifiConfigController;Landroid/widget/EditText;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 2155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 2156
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 2158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v4, "CACERT_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2159
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v4, "USRPKEY_"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_17

    .line 2162
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 2166
    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_27

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_27

    .line 2167
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-object v0, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v21, v0

    .line 2168
    .local v21, "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v20

    .line 2169
    .local v20, "eapMethod":I
    move/from16 v19, v20

    .line 2170
    .local v19, "currentIndex":I
    sget-boolean v2, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v4, "CMCC"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2171
    const/4 v2, 0x4

    move/from16 v0, v19

    if-ne v0, v2, :cond_18

    const/16 v19, 0x1

    .line 2189
    :cond_18
    :goto_7
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v31

    .line 2190
    .local v31, "phase2Method":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2191
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 2193
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase1Method()Ljava/lang/String;

    move-result-object v30

    .line 2194
    .local v30, "phase1Value":Ljava/lang/String;
    if-eqz v30, :cond_19

    .line 2195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v4, "fast_provisioning="

    const-string v5, ""

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2197
    :cond_19
    sparse-switch v20, :sswitch_data_0

    .line 2216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2219
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAlias()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2224
    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v32

    .line 2225
    .local v32, "position":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    move/from16 v0, v32

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 2227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2290
    .end local v13    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v19    # "currentIndex":I
    .end local v20    # "eapMethod":I
    .end local v21    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v25    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v30    # "phase1Value":Ljava/lang/String;
    .end local v31    # "phase2Method":I
    .end local v32    # "position":I
    :cond_1a
    :goto_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 2291
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 2292
    .restart local v3    # "uri":Landroid/net/Uri;
    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    .line 2293
    .local v6, "selectionArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "isEnterpriseNetwork"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .line 2295
    .local v22, "enterpriseCr":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v9, 0x0

    const-string v10, "getAllowUserPolicyChanges"

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 2297
    .local v14, "allowCr":Landroid/database/Cursor;
    if-eqz v22, :cond_1f

    if-eqz v14, :cond_1f

    .line 2299
    :try_start_2
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2300
    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    .line 2301
    const-string v2, "isEnterpriseNetwork"

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    move-object/from16 v0, v22

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    const-string v2, "getAllowUserPolicyChanges"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "false"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2303
    const-string v2, "WifiPolicy"

    const-string v4, "Enterprise Wifi settings not editable"

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2305
    :cond_1b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2306
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2307
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1e

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V

    .line 2308
    :cond_1e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2314
    :cond_1f
    if-eqz v22, :cond_20

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    .line 2315
    :cond_20
    if-eqz v14, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2118
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local v14    # "allowCr":Landroid/database/Cursor;
    .end local v22    # "enterpriseCr":Landroid/database/Cursor;
    .restart local v25    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_21
    const-string v2, "PEAP"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2119
    const-string v2, "TLS"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2120
    const-string v2, "TTLS"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2121
    const-string v2, "PWD"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2123
    const-string v2, "SIM"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2125
    const-string v2, "AKA"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2127
    const-string v2, "AKA\'"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2128
    if-nez v15, :cond_22

    .line 2129
    const-string v2, "FAST"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2130
    :cond_22
    if-nez v15, :cond_16

    .line 2131
    const-string v2, "LEAP"

    move-object/from16 v0, v25

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 2173
    .restart local v13    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .restart local v19    # "currentIndex":I
    .restart local v20    # "eapMethod":I
    .restart local v21    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    :cond_23
    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v2

    sget-object v4, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    array-length v4, v4

    if-eq v2, v4, :cond_25

    .line 2180
    if-eqz v15, :cond_24

    .line 2181
    const/4 v2, 0x7

    move/from16 v0, v20

    if-le v0, v2, :cond_24

    add-int/lit8 v19, v19, -0x1

    .line 2182
    :cond_24
    if-eqz v15, :cond_18

    .line 2183
    const/16 v2, 0x8

    move/from16 v0, v20

    if-le v0, v2, :cond_18

    add-int/lit8 v19, v19, -0x1

    goto/16 :goto_7

    .line 2185
    :cond_25
    const/4 v2, 0x6

    move/from16 v0, v20

    if-ne v0, v2, :cond_26

    add-int/lit8 v19, v19, -0x2

    goto/16 :goto_7

    .line 2186
    :cond_26
    const/4 v2, 0x5

    move/from16 v0, v20

    if-le v0, v2, :cond_18

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_7

    .line 2200
    .restart local v30    # "phase1Value":Ljava/lang/String;
    .restart local v31    # "phase2Method":I
    :sswitch_0
    packed-switch v31, :pswitch_data_0

    .line 2211
    :pswitch_0
    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid phase 2 method "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v31

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2202
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_8

    .line 2205
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_8

    .line 2208
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/widget/Spinner;->setSelection(I)V

    goto/16 :goto_8

    .line 2231
    .end local v19    # "currentIndex":I
    .end local v20    # "eapMethod":I
    .end local v21    # "enterpriseConfig":Landroid/net/wifi/WifiEnterpriseConfig;
    .end local v30    # "phase1Value":Ljava/lang/String;
    .end local v31    # "phase2Method":I
    :cond_27
    const/16 v23, 0x0

    .line 2233
    .local v23, "index":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v2, v2, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    if-eqz v2, :cond_2c

    .line 2234
    sget-object v2, Lcom/android/settings/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    const-string v4, "SIM"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 2235
    const/16 v27, 0x0

    .line 2236
    .local v27, "mIsAisSim":Z
    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string v4, "AIS"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2237
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    const-string v2, ","

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 2238
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .line 2239
    .local v28, "mOperator":[Ljava/lang/String;
    const-string v2, ""

    const/4 v4, 0x0

    aget-object v4, v28, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v4, v28, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_29

    :cond_28
    const-string v2, ""

    const/4 v4, 0x1

    aget-object v4, v28, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v4, v28, v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2241
    :cond_29
    const/16 v27, 0x1

    .line 2247
    .end local v28    # "mOperator":[Ljava/lang/String;
    :cond_2a
    :goto_a
    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string v4, "SingTel"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2b

    if-eqz v27, :cond_2c

    :cond_2b
    sget-object v2, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2c

    .line 2249
    const/16 v23, 0x4

    .line 2263
    .end local v27    # "mIsAisSim":Z
    :cond_2c
    :goto_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 2264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    const-string v4, "1"

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 2265
    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2243
    .restart local v27    # "mIsAisSim":Z
    :cond_2d
    const-string v2, ""

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    const-string v2, ","

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2a

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 2244
    const/16 v27, 0x1

    goto :goto_a

    .line 2251
    .end local v27    # "mIsAisSim":Z
    :cond_2e
    sget-object v2, Lcom/android/settings/Utils;->EAPMETHOD_SETTING:Ljava/lang/String;

    const-string v4, "AKA"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 2252
    sget-object v2, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    const-string v4, "LGU"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    sget-object v2, Lcom/android/settings/Utils;->CONFIG_VENDOR_SSID_LIST:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v4, v4, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_2c

    .line 2257
    const/16 v23, 0x5

    goto :goto_b

    .line 2268
    .end local v13    # "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    .end local v23    # "index":I
    .end local v25    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    :cond_2f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v34

    .line 2269
    .local v34, "spinnerValue":Ljava/lang/String;
    const-string v2, "PEAP"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    .line 2270
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2271
    :cond_30
    const-string v2, "TLS"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    .line 2272
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2273
    :cond_31
    const-string v2, "TTLS"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2274
    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2275
    :cond_32
    const-string v2, "PWD"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 2276
    const/4 v2, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2277
    :cond_33
    const-string v2, "SIM"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 2278
    const/4 v2, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2279
    :cond_34
    const-string v2, "AKA"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 2280
    const/4 v2, 0x5

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2281
    :cond_35
    const-string v2, "AKA\'"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 2282
    const/4 v2, 0x6

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2283
    :cond_36
    const-string v2, "FAST"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 2284
    const/4 v2, 0x7

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2285
    :cond_37
    const-string v2, "LEAP"

    move-object/from16 v0, v34

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2286
    const/16 v2, 0x8

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto/16 :goto_9

    .line 2310
    .end local v34    # "spinnerValue":Ljava/lang/String;
    .restart local v3    # "uri":Landroid/net/Uri;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local v14    # "allowCr":Landroid/database/Cursor;
    .restart local v22    # "enterpriseCr":Landroid/database/Cursor;
    :catchall_1
    move-exception v2

    throw v2

    .line 2197
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7 -> :sswitch_0
    .end sparse-switch

    .line 2200
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showSimCheckFields()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const v12, 0x7f0d05ed

    const v11, 0x7f0d05ee

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 2502
    new-array v0, v13, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v0, v7

    const-string v6, "0"

    aput-object v6, v0, v8

    .line 2503
    .local v0, "currentOperator":[Ljava/lang/String;
    new-array v1, v13, [Ljava/lang/String;

    const-string v6, "0"

    aput-object v6, v1, v7

    const-string v6, "0"

    aput-object v6, v1, v8

    .line 2505
    .local v1, "currentSimState":[Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2506
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2507
    .local v5, "tempCurrentSimState":[Ljava/lang/String;
    aget-object v6, v5, v7

    aput-object v6, v1, v7

    .line 2508
    aget-object v6, v5, v8

    aput-object v6, v1, v8

    .line 2513
    .end local v5    # "tempCurrentSimState":[Ljava/lang/String;
    :goto_0
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, ","

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2514
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    const-string v9, ","

    invoke-virtual {v6, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2515
    .local v4, "tempCurrentOperator":[Ljava/lang/String;
    aget-object v6, v4, v7

    aput-object v6, v0, v7

    .line 2516
    aget-object v6, v4, v8

    aput-object v6, v0, v8

    .line 2521
    .end local v4    # "tempCurrentOperator":[Ljava/lang/String;
    :goto_1
    sget-boolean v6, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "WifiConfigController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Sim State : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " Sim State2 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v1, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " simslot2only : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2522
    :cond_0
    sget-boolean v6, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "WifiConfigController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "operator_1: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v7

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " operator_2: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v0, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    :cond_1
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v9, 0x7f0d05ec

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 2524
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v9, 0x7f0d05ec

    invoke-virtual {v6, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2525
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2526
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2527
    const-string v6, "46000"

    aget-object v9, v0, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "46002"

    aget-object v9, v0, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "46007"

    aget-object v9, v0, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    :cond_2
    move v2, v8

    .line 2528
    .local v2, "isSim1CMCC":Z
    :goto_2
    const-string v6, "46000"

    aget-object v9, v0, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "46002"

    aget-object v9, v0, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "46007"

    aget-object v9, v0, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_3
    move v3, v8

    .line 2530
    .local v3, "isSim2CMCC":Z
    :goto_3
    const-string v6, "1"

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->simslot2only:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 2531
    const-string v6, "WifiConfigController"

    const-string v7, "Sim 2 only , QC 1CHIP DSDS project"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    if-eqz v2, :cond_4

    .line 2533
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2534
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2535
    iput v13, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 2572
    :cond_4
    :goto_4
    const-string v6, "WifiConfigController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mSimNum : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2574
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2575
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2577
    .end local v2    # "isSim1CMCC":Z
    .end local v3    # "isSim2CMCC":Z
    :cond_5
    return-void

    .line 2510
    :cond_6
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simstate:Ljava/lang/String;

    aput-object v6, v1, v7

    goto/16 :goto_0

    .line 2518
    :cond_7
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->simOperator:Ljava/lang/String;

    aput-object v6, v0, v7

    goto/16 :goto_1

    :cond_8
    move v2, v7

    .line 2527
    goto/16 :goto_2

    .restart local v2    # "isSim1CMCC":Z
    :cond_9
    move v3, v7

    .line 2528
    goto :goto_3

    .line 2538
    .restart local v3    # "isSim2CMCC":Z
    :cond_a
    const-string v6, "0"

    aget-object v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    const-string v6, "0"

    aget-object v9, v1, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    .line 2539
    const-string v6, "WifiConfigController"

    const-string v7, "Sim 2 only , 2CHIP/ 1CHIP DSDA "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2540
    if-eqz v3, :cond_4

    .line 2541
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2542
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2543
    iput v13, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    goto :goto_4

    .line 2546
    :cond_b
    const-string v6, "0"

    aget-object v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const-string v6, "0"

    aget-object v9, v1, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 2547
    const-string v6, "WifiConfigController"

    const-string v7, "No Sim Card"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2549
    :cond_c
    const-string v6, "0"

    aget-object v9, v1, v7

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "0"

    aget-object v9, v1, v8

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 2550
    const-string v6, "WifiConfigController"

    const-string v9, "2 Sim Cards"

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2551
    if-eqz v2, :cond_d

    .line 2552
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2553
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2554
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2555
    iput v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 2557
    :cond_d
    if-eqz v3, :cond_4

    .line 2558
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 2559
    if-nez v2, :cond_4

    .line 2560
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2561
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2562
    iput v13, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    goto/16 :goto_4

    .line 2566
    :cond_e
    const-string v6, "WifiConfigController"

    const-string v7, "Sim 1 only"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    if-eqz v2, :cond_4

    .line 2568
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v6, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/CheckBox;

    invoke-virtual {v6, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 2569
    iput v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    goto/16 :goto_4
.end method

.method private showSisNotification()V
    .locals 4

    .prologue
    .line 3740
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0e042a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0429

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0521

    new-instance v3, Lcom/android/settings/wifi/WifiConfigController$10;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiConfigController$10;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0e0520

    new-instance v3, Lcom/android/settings/wifi/WifiConfigController$9;

    invoke-direct {v3, p0}, Lcom/android/settings/wifi/WifiConfigController$9;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 3762
    .local v0, "builder":Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3763
    return-void
.end method

.method private showSoftKeyboard(Z)V
    .locals 6
    .param p1, "isShowing"    # Z

    .prologue
    .line 3124
    const-string v3, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showSoftKeyboard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isRequestHideKeyboard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3126
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3127
    .local v0, "focusedView":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 3128
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 3129
    .local v1, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    .line 3130
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isAccessoryKeyboardState()I

    move-result v2

    .line 3131
    .local v2, "mKeyboard":I
    if-eqz v2, :cond_0

    .line 3132
    const/4 p1, 0x0

    .line 3134
    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    if-nez v3, :cond_1

    .line 3135
    const-string v3, "WifiConfigController"

    const-string v4, "    **** showSoftKeyboard :: showSoftInput !!!*****"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3136
    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 3140
    .end local v1    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v2    # "mKeyboard":I
    :cond_1
    return-void
.end method

.method private updatePasswordVisibility(Z)V
    .locals 3
    .param p1, "checked"    # Z

    .prologue
    .line 4057
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v0

    .line 4058
    .local v0, "pos":I
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz p1, :cond_1

    const/16 v1, 0x90

    :goto_0
    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 4062
    if-ltz v0, :cond_0

    .line 4063
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 4065
    :cond_0
    return-void

    .line 4058
    :cond_1
    const/16 v1, 0x80

    goto :goto_0
.end method

.method private updateShowSisOption()V
    .locals 2

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1053
    return-void
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 13
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 1859
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-nez v10, :cond_0

    const/4 v10, 0x0

    .line 1939
    :goto_0
    return v10

    .line 1861
    :cond_0
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1862
    .local v7, "ipAddr":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1863
    const v10, 0x7f0e045c

    goto :goto_0

    .line 1866
    :cond_1
    invoke-direct {p0, v7}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v6

    .line 1867
    .local v6, "inetAddr":Ljava/net/Inet4Address;
    if-nez v6, :cond_2

    .line 1868
    const v10, 0x7f0e045c

    goto :goto_0

    .line 1872
    :cond_2
    :try_start_0
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    if-eqz v10, :cond_3

    .line 1873
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    .line 1874
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiConfigController;->generateBlankFields(Ljava/net/Inet4Address;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1879
    :cond_3
    const/4 v9, -0x1

    .line 1880
    .local v9, "networkPrefixLength":I
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1881
    .local v8, "networkPrefix":Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1882
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAutoGenFirstTime:Z

    if-eqz v10, :cond_6

    .line 1883
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v11}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f0e0467

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1891
    :cond_4
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 1892
    if-ltz v9, :cond_5

    const/16 v10, 0x20

    if-le v9, v10, :cond_7

    .line 1893
    :cond_5
    const v10, 0x7f0e045f

    goto :goto_0

    .line 1876
    .end local v8    # "networkPrefix":Ljava/lang/String;
    .end local v9    # "networkPrefixLength":I
    :catch_0
    move-exception v3

    .line 1877
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0e045c

    goto :goto_0

    .line 1886
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v8    # "networkPrefix":Ljava/lang/String;
    .restart local v9    # "networkPrefixLength":I
    :cond_6
    const v10, 0x7f0e045f

    goto :goto_0

    .line 1895
    :cond_7
    new-instance v10, Landroid/net/LinkAddress;

    invoke-direct {v10, v6, v9}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v10, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1900
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1901
    .local v4, "gateway":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    const v10, 0x7f0e045d

    goto/16 :goto_0

    .line 1896
    .end local v4    # "gateway":Ljava/lang/String;
    :catch_1
    move-exception v3

    .line 1897
    .local v3, "e":Ljava/lang/NumberFormatException;
    const v10, 0x7f0e045f

    goto/16 :goto_0

    .line 1903
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "gateway":Ljava/lang/String;
    :cond_8
    const/4 v5, 0x0

    .line 1905
    .local v5, "gatewayAddr":Ljava/net/InetAddress;
    :try_start_2
    invoke-static {v4}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    .line 1909
    iput-object v5, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 1911
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1912
    .local v0, "dns1":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1914
    .local v1, "dns2":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 1915
    const v10, 0x7f0e045e

    goto/16 :goto_0

    .line 1906
    .end local v0    # "dns1":Ljava/lang/String;
    .end local v1    # "dns2":Ljava/lang/String;
    :catch_2
    move-exception v3

    .line 1907
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0e045d

    goto/16 :goto_0

    .line 1918
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v0    # "dns1":Ljava/lang/String;
    .restart local v1    # "dns2":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x0

    .line 1919
    .local v2, "dnsAddr":Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1921
    :try_start_3
    invoke-static {v0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v2

    .line 1925
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1930
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    .line 1932
    :try_start_4
    invoke-static {v1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object v2

    .line 1936
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1939
    :cond_a
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1922
    :catch_3
    move-exception v3

    .line 1923
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0e045e

    goto/16 :goto_0

    .line 1927
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_b
    iget-object v10, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-static {}, Ljava/net/InetAddress;->getLoopbackAddress()Ljava/net/InetAddress;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1933
    :catch_4
    move-exception v3

    .line 1934
    .restart local v3    # "e":Ljava/lang/IllegalArgumentException;
    const v10, 0x7f0e045e

    goto/16 :goto_0
.end method


# virtual methods
.method public OpenWebPage()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 1162
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mTouchX:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mTouchY:I

    if-ne v1, v2, :cond_1

    .line 1163
    sget-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "WifiConfigController"

    const-string v2, "Go to Webpage: open webpage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGateway:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1165
    .local v0, "browserIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1167
    .end local v0    # "browserIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 3484
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mTextViewChangedHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/wifi/WifiConfigController$7;

    invoke-direct {v1, p0}, Lcom/android/settings/wifi/WifiConfigController$7;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3489
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 3494
    return-void
.end method

.method public dismissSpinnerPopup()V
    .locals 1

    .prologue
    .line 3993
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    .line 3994
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 3995
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    .line 3996
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 3997
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_0

    .line 3998
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 3999
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_1

    .line 4000
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 4001
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    .line 4002
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 4003
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_3

    .line 4004
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 4007
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_4

    .line 4008
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 4009
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_5

    .line 4010
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->twDismissSpinnerPopup()V

    .line 4011
    :cond_5
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 14

    .prologue
    .line 1233
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_0

    const-string v10, "WifiConfigController"

    const-string v11, "enableSubmitIfAppropriate"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1234
    :cond_0
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v8

    .line 1235
    .local v8, "submit":Landroid/widget/Button;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->getForgetButton()Landroid/widget/Button;

    move-result-object v3

    .line 1236
    .local v3, "forget":Landroid/widget/Button;
    if-nez v8, :cond_2

    .line 1397
    :cond_1
    :goto_0
    return-void

    .line 1239
    :cond_2
    const/4 v9, 0x0

    .line 1240
    .local v9, "trimedSsidLength":I
    const/4 v2, 0x1

    .line 1241
    .local v2, "enabled":Z
    const/4 v7, 0x0

    .line 1242
    .local v7, "passwordInvalid":Z
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v10, :cond_4

    .line 1243
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_3

    .line 1244
    const/4 v2, 0x0

    .line 1246
    :cond_3
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v9

    .line 1249
    :cond_4
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v10, :cond_1a

    .line 1250
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v5

    .line 1251
    .local v5, "passLen":I
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-eqz v10, :cond_f

    .line 1252
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    if-lez v5, :cond_5

    const/16 v10, 0x8

    if-ge v5, v10, :cond_5

    .line 1254
    const-string v10, "WifiConfigController"

    const-string v11, "password invalid (retry dialog)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/4 v7, 0x1

    .line 1297
    .end local v5    # "passLen":I
    :cond_5
    :goto_1
    const-string v10, "VZW"

    sget-object v11, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 1298
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_7

    .line 1299
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_7

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-lez v10, :cond_7

    .line 1300
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1302
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v11, v11, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1b

    .line 1303
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 1304
    if-eqz v0, :cond_6

    .line 1305
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1313
    :cond_6
    :goto_2
    if-eqz v0, :cond_7

    .line 1314
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10, v0}, Lcom/android/settings/wifi/AccessPoint;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 1319
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v10, :cond_23

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_23

    .line 1320
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_9

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-nez v10, :cond_9

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_9

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v10, v11, :cond_8

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v10, :cond_9

    .line 1322
    :cond_8
    const/4 v2, 0x1

    .line 1323
    const/4 v7, 0x0

    .line 1324
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-eqz v10, :cond_9

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v10, :cond_9

    .line 1325
    const/4 v2, 0x0

    .line 1326
    const/4 v7, 0x1

    .line 1329
    :cond_9
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_b

    .line 1330
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1331
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-ne v10, v11, :cond_1c

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-nez v10, :cond_1c

    .line 1332
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 1333
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const v11, 0x7f0e03fb

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(I)V

    .line 1334
    if-eqz v0, :cond_a

    .line 1335
    const/4 v10, 0x0

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1355
    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 1356
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v10, v0}, Lcom/android/settings/wifi/AccessPoint;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 1372
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_b
    :goto_4
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v10

    if-eqz v10, :cond_24

    .line 1373
    const/4 v2, 0x1

    .line 1377
    :goto_5
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_c

    const-string v10, "WifiConfigController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mRetry:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-boolean v12, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " password invalid:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :cond_c
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-eqz v10, :cond_25

    if-eqz v7, :cond_25

    .line 1379
    const/4 v2, 0x0

    .line 1385
    :cond_d
    :goto_6
    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v10, :cond_e

    if-nez v9, :cond_e

    .line 1386
    const/4 v2, 0x0

    .line 1388
    :cond_e
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1389
    invoke-virtual {v8, v2}, Landroid/widget/Button;->setFocusable(Z)V

    .line 1391
    const-string v10, "VZW"

    sget-object v11, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1392
    if-eqz v3, :cond_1

    .line 1393
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1394
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setFocusable(Z)V

    goto/16 :goto_0

    .line 1257
    .restart local v5    # "passLen":I
    :cond_f
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_10

    if-eqz v5, :cond_11

    const/16 v10, 0xd

    if-le v5, v10, :cond_10

    const/16 v10, 0x1a

    if-ne v5, v10, :cond_11

    :cond_10
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_17

    const/16 v10, 0x8

    if-ge v5, v10, :cond_17

    .line 1260
    :cond_11
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1261
    .local v6, "password":Ljava/lang/String;
    const-string v10, "[0-9A-Fa-f]*"

    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    .line 1262
    .local v4, "isPasswordHex":Z
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_15

    if-eqz v5, :cond_15

    .line 1263
    if-nez v4, :cond_12

    .line 1264
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1265
    .local v1, "context":Landroid/content/Context;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0xd

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v11, 0xd

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1

    .line 1268
    .end local v1    # "context":Landroid/content/Context;
    :cond_12
    const/16 v10, 0x1a

    if-le v5, v10, :cond_13

    .line 1269
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1270
    .restart local v1    # "context":Landroid/content/Context;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const v11, 0x7f0e0094

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(I)V

    .line 1271
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a007d

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1272
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1273
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v13, 0x1a

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1274
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/16 v11, 0x1a

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setSelection(I)V

    goto/16 :goto_1

    .line 1276
    .end local v1    # "context":Landroid/content/Context;
    :cond_13
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v10}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1277
    .restart local v1    # "context":Landroid/content/Context;
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordErrorText:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1278
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00d3

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 1279
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_14

    const-string v10, "WifiConfigController"

    const-string v11, "password invalid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    :cond_14
    const/4 v7, 0x1

    .line 1281
    goto/16 :goto_1

    .line 1284
    .end local v1    # "context":Landroid/content/Context;
    :cond_15
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_16

    const-string v10, "WifiConfigController"

    const-string v11, "password invalid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    :cond_16
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1287
    .end local v4    # "isPasswordHex":Z
    .end local v6    # "password":Ljava/lang/String;
    :cond_17
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_5

    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_5

    if-eqz v5, :cond_18

    if-lez v5, :cond_5

    const/16 v10, 0x8

    if-ge v5, v10, :cond_5

    .line 1290
    :cond_18
    sget-boolean v10, Lcom/android/settings/wifi/WifiConfigController;->DBG:Z

    if-eqz v10, :cond_19

    const-string v10, "WifiConfigController"

    const-string v11, "password invalid (saved ap)"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1291
    :cond_19
    const/4 v7, 0x1

    goto/16 :goto_1

    .line 1294
    .end local v5    # "passLen":I
    :cond_1a
    const-string v10, "WifiConfigController"

    const-string v11, "mPasswordView is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1308
    .restart local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1b
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    .line 1309
    if-eqz v0, :cond_6

    .line 1310
    const/4 v10, 0x1

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_2

    .line 1338
    :cond_1c
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v11, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v11, v11, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-eq v10, v11, :cond_1d

    .line 1339
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    .line 1340
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v10, :cond_1e

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_1e

    .line 1341
    const/4 v7, 0x1

    .line 1350
    :cond_1d
    :goto_7
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 1351
    if-eqz v0, :cond_a

    .line 1352
    const/4 v10, 0x1

    iput-boolean v10, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto/16 :goto_3

    .line 1342
    :cond_1e
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1f

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-eqz v10, :cond_20

    :cond_1f
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_21

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    const/16 v11, 0x8

    if-ge v10, v11, :cond_21

    .line 1344
    :cond_20
    const/4 v7, 0x1

    goto :goto_7

    .line 1345
    :cond_21
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_1d

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-eqz v10, :cond_22

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-lez v10, :cond_1d

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    const/16 v11, 0x8

    if-ge v10, v11, :cond_1d

    .line 1347
    :cond_22
    const/4 v7, 0x1

    goto :goto_7

    .line 1359
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_23
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v10, :cond_b

    .line 1361
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v10, :cond_b

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->length()I

    move-result v10

    if-nez v10, :cond_b

    .line 1362
    const/4 v2, 0x0

    .line 1363
    const/4 v7, 0x1

    .line 1364
    iget v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v11, 0x3

    if-ne v10, v11, :cond_b

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isNeededPasswordView()Z

    move-result v10

    if-nez v10, :cond_b

    .line 1365
    const/4 v2, 0x1

    .line 1366
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 1375
    :cond_24
    const/4 v2, 0x0

    goto/16 :goto_5

    .line 1380
    :cond_25
    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v10, :cond_26

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v10, v10, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v11, -0x1

    if-ne v10, v11, :cond_27

    :cond_26
    if-eqz v7, :cond_27

    .line 1381
    const/4 v2, 0x0

    goto/16 :goto_6

    .line 1382
    :cond_27
    const-string v10, "VZW"

    sget-object v11, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    iget-boolean v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v10, :cond_d

    if-eqz v7, :cond_d

    .line 1383
    const/4 v2, 0x0

    goto/16 :goto_6
.end method

.method getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 19

    .prologue
    .line 1468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_0

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-nez v14, :cond_0

    .line 1469
    const/4 v3, 0x0

    .line 1744
    :goto_0
    return-object v3

    .line 1472
    :cond_0
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1474
    .local v3, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-nez v14, :cond_1

    .line 1475
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1478
    const/4 v14, 0x1

    iput-boolean v14, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1497
    :goto_1
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    packed-switch v14, :pswitch_data_0

    .line 1715
    const/4 v3, 0x0

    goto :goto_0

    .line 1479
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_2

    .line 1480
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 1483
    :cond_2
    const-string v14, "VZW"

    sget-object v15, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1484
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    if-eqz v14, :cond_3

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    if-nez v14, :cond_3

    .line 1485
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0d0563

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    .line 1486
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v15, 0x7f0d05ae

    invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidErrorText:Landroid/widget/TextView;

    .line 1487
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const v15, 0x7f0e03df

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setHint(I)V

    .line 1488
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/16 v15, 0x9

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Landroid/widget/EditText;->setNewActionPopupMenu(IZ)V

    .line 1489
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1494
    :cond_3
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v14, v14, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    iput v14, v3, Landroid/net/wifi/WifiConfiguration;->networkId:I

    goto/16 :goto_1

    .line 1492
    :cond_4
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 1499
    :pswitch_0
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1719
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/BitSet;

    if-eqz v14, :cond_7

    .line 1720
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/BitSet;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 1721
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1723
    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings/wifi/AccessPoint;->secFlags:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->get(I)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1724
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1728
    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v14, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v15, 0x1

    if-eq v14, v15, :cond_8

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_9

    .line 1731
    :cond_8
    const-string v14, "WifiConfigController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "SamsungFlag : SEC_INTERANET_AP "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    if-eqz v14, :cond_28

    .line 1733
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1740
    :cond_9
    :goto_4
    new-instance v14, Landroid/net/IpConfiguration;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    move-object/from16 v18, v0

    invoke-direct/range {v14 .. v18}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v3, v14}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    goto/16 :goto_0

    .line 1503
    :pswitch_1
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1504
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1505
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1506
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->length()I

    move-result v14

    if-eqz v14, :cond_5

    .line 1507
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->length()I

    move-result v7

    .line 1508
    .local v7, "length":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1510
    .local v8, "password":Ljava/lang/String;
    const/16 v14, 0xa

    if-eq v7, v14, :cond_a

    const/16 v14, 0x1a

    if-eq v7, v14, :cond_a

    const/16 v14, 0x3a

    if-ne v7, v14, :cond_b

    :cond_a
    const-string v14, "[0-9A-Fa-f]*"

    invoke-virtual {v8, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    .line 1512
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v8, v14, v15

    goto/16 :goto_3

    .line 1514
    :cond_b
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v15, 0x0

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v17, 0x22

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const/16 v17, 0x22

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    goto/16 :goto_3

    .line 1520
    .end local v7    # "length":I
    .end local v8    # "password":Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v14, :cond_c

    .line 1521
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1525
    :goto_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->length()I

    move-result v14

    if-eqz v14, :cond_5

    .line 1526
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1527
    .restart local v8    # "password":Ljava/lang/String;
    const-string v14, "[0-9A-Fa-f]{64}"

    invoke-virtual {v8, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 1528
    iput-object v8, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 1523
    .end local v8    # "password":Ljava/lang/String;
    :cond_c
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    goto :goto_5

    .line 1530
    .restart local v8    # "password":Ljava/lang/String;
    :cond_d
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x22

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto/16 :goto_3

    .line 1536
    .end local v8    # "password":Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v14, :cond_12

    .line 1537
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v15, 0x9

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1544
    :goto_6
    new-instance v14, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v14}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1545
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 1546
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v15, ""

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    .line 1548
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1549
    .local v11, "spinnerValue":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v4

    .line 1550
    .local v4, "eapMethod":I
    sget-boolean v14, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v14, :cond_e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget-object v14, v14, Lcom/android/settings/wifi/AccessPoint;->ssid:Ljava/lang/String;

    const-string v15, "CMCC"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_e

    .line 1551
    const/4 v14, 0x1

    if-ne v4, v14, :cond_e

    .line 1552
    const/4 v4, 0x4

    .line 1555
    :cond_e
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase1Spinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v9

    .line 1556
    .local v9, "phase1Method":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v10

    .line 1557
    .local v10, "phase2Method":I
    const-string v14, "PEAP"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_14

    .line 1558
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1562
    packed-switch v10, :pswitch_data_1

    .line 1573
    const-string v14, "WifiConfigController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown phase2 method"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    :goto_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1640
    .local v1, "caCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const-string v1, ""

    .line 1641
    :cond_f
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAlias(Ljava/lang/String;)V

    .line 1642
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1643
    .local v2, "clientCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_10

    const-string v2, ""

    .line 1644
    :cond_10
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromCCM:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1d

    .line 1645
    const-string v14, " [KNOX]"

    const-string v15, ""

    invoke-virtual {v2, v14, v15}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    .line 1646
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setCCMEnabled(Z)V

    .line 1655
    :cond_11
    :goto_8
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 1656
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 1657
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 1660
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->isShown()Z

    move-result v14

    if-eqz v14, :cond_20

    .line 1663
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->length()I

    move-result v14

    if-lez v14, :cond_5

    .line 1664
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1538
    .end local v1    # "caCert":Ljava/lang/String;
    .end local v2    # "clientCert":Ljava/lang/String;
    .end local v4    # "eapMethod":I
    .end local v9    # "phase1Method":I
    .end local v10    # "phase2Method":I
    .end local v11    # "spinnerValue":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    if-eqz v14, :cond_13

    .line 1539
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_6

    .line 1541
    :cond_13
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1542
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_6

    .line 1564
    .restart local v4    # "eapMethod":I
    .restart local v9    # "phase1Method":I
    .restart local v10    # "phase2Method":I
    .restart local v11    # "spinnerValue":Ljava/lang/String;
    :pswitch_4
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1567
    :pswitch_5
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1570
    :pswitch_6
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1576
    :cond_14
    const-string v14, "FAST"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_15

    .line 1577
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x7

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1578
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase1Method(I)V

    .line 1579
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v15, "/data/misc/wifi/wpa_supplicant.pac"

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPacFile(Ljava/lang/String;)V

    .line 1581
    packed-switch v10, :pswitch_data_2

    .line 1592
    const-string v14, "WifiConfigController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Unknown phase2 method"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 1583
    :pswitch_7
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1586
    :pswitch_8
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1589
    :pswitch_9
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1596
    :cond_15
    const-string v14, "TLS"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    .line 1597
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 1611
    :cond_16
    :goto_9
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto/16 :goto_7

    .line 1598
    :cond_17
    const-string v14, "TTLS"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_18

    .line 1599
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_9

    .line 1600
    :cond_18
    const-string v14, "PWD"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_19

    .line 1601
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x3

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_9

    .line 1602
    :cond_19
    const-string v14, "SIM"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1a

    .line 1603
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x4

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_9

    .line 1604
    :cond_1a
    const-string v14, "AKA"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1b

    .line 1605
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_9

    .line 1606
    :cond_1b
    const-string v14, "AKA\'"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1c

    .line 1607
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_9

    .line 1608
    :cond_1c
    const-string v14, "LEAP"

    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 1609
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    goto :goto_9

    .line 1647
    .restart local v1    # "caCert":Ljava/lang/String;
    .restart local v2    # "clientCert":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    if-eqz v14, :cond_11

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v14, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_11

    .line 1648
    invoke-virtual {v2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    .line 1649
    .local v6, "index":I
    if-ltz v6, :cond_1e

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-eq v14, v15, :cond_1f

    .line 1650
    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 1652
    :cond_1f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->certListFromUCM_uri:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "clientCert":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 1653
    .restart local v2    # "clientCert":Ljava/lang/String;
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setUCMEnabled(Z)V

    goto/16 :goto_8

    .line 1666
    .end local v6    # "index":I
    :cond_20
    sget-boolean v14, Lcom/android/settings/Utils;->ENABLE_SIM_SELECTION_UI:Z

    if-eqz v14, :cond_21

    .line 1667
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    iput v14, v3, Landroid/net/wifi/WifiConfiguration;->sim_num:I

    goto/16 :goto_3

    .line 1670
    :cond_21
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v15}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1675
    .end local v1    # "caCert":Ljava/lang/String;
    .end local v2    # "clientCert":Ljava/lang/String;
    .end local v4    # "eapMethod":I
    .end local v9    # "phase1Method":I
    .end local v10    # "phase2Method":I
    .end local v11    # "spinnerValue":Ljava/lang/String;
    :pswitch_a
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x5

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1676
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->length()I

    move-result v14

    if-eqz v14, :cond_22

    .line 1677
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1678
    .restart local v8    # "password":Ljava/lang/String;
    const-string v14, "[0-9A-Fa-f]{64}"

    invoke-virtual {v8, v14}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_23

    .line 1679
    iput-object v8, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1684
    .end local v8    # "password":Ljava/lang/String;
    :cond_22
    :goto_a
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    if-eqz v14, :cond_5

    .line 1685
    const-string v14, "WifiConfigController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mWapiPskType.getSelectedItemPosition() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1686
    sget-object v14, Lcom/android/settings/wifi/WifiConfigController;->WAPI_PSK_TYPE_VALUES:[I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiPskType:Landroid/widget/Spinner;

    invoke-virtual {v15}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v15

    aget v5, v14, v15

    .line 1687
    .local v5, "iType":I
    iput v5, v3, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    goto/16 :goto_3

    .line 1681
    .end local v5    # "iType":I
    .restart local v8    # "password":Ljava/lang/String;
    :cond_23
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v15, 0x22

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/16 v15, 0x22

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_a

    .line 1692
    .end local v8    # "password":Ljava/lang/String;
    :pswitch_b
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Ljava/util/BitSet;->set(I)V

    .line 1693
    new-instance v14, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v14}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1694
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    .line 1695
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiCertIndex:I

    iput v14, v3, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 1696
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    if-eqz v14, :cond_5

    .line 1697
    const-string v14, "WifiConfigController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mWapiAsCert.getSelectedItemPosition() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    const-string v14, "WifiConfigController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "mWapiAsCert.getSelectedItem() "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1700
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1701
    .local v12, "wapiAsCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_24

    const-string v12, ""

    .line 1702
    :cond_24
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiASCertificateAlias()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 1703
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v14

    if-nez v14, :cond_26

    const-string v14, ""

    :goto_b
    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 1706
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1707
    .local v13, "wapiUserCert":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->unspecifiedCert:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_25

    const-string v13, ""

    .line 1708
    :cond_25
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v13}, Landroid/net/wifi/WifiEnterpriseConfig;->setWapiUserCertificateAlias(Ljava/lang/String;)V

    .line 1709
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14}, Landroid/net/wifi/WifiEnterpriseConfig;->getWapiUserCertificateAlias()Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    .line 1710
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v14

    if-nez v14, :cond_27

    const-string v14, ""

    :goto_c
    iput-object v14, v3, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_3

    .line 1703
    .end local v13    # "wapiUserCert":Ljava/lang/String;
    :cond_26
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "keystore://WAPIAS_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiAsCert:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_b

    .line 1710
    .restart local v13    # "wapiUserCert":Ljava/lang/String;
    :cond_27
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "keystore://WAPIUSR_"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mWapiUserCert:Landroid/widget/Spinner;

    invoke-virtual {v14}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/settings/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_c

    .line 1734
    .end local v12    # "wapiAsCert":Ljava/lang/String;
    .end local v13    # "wapiUserCert":Ljava/lang/String;
    :cond_28
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/settings/wifi/WifiConfigController;->mPrevInteranetUseOnlyMode:Z

    if-eqz v14, :cond_9

    .line 1735
    iget-object v14, v3, Landroid/net/wifi/WifiConfiguration;->samsungSpecificFlags:Ljava/util/BitSet;

    const/4 v15, 0x3

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/util/BitSet;->set(IZ)V

    goto/16 :goto_4

    .line 1497
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 1562
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1581
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public getDialogButton(I)Z
    .locals 2
    .param p1, "Position"    # I

    .prologue
    .line 992
    const/4 v0, 0x0

    .line 994
    .local v0, "ret":Z
    packed-switch p1, :pswitch_data_0

    .line 1005
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 998
    :pswitch_1
    sget-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    if-eqz v1, :cond_0

    .line 999
    const/4 v0, 0x1

    .line 1000
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/settings/wifi/WifiConfigController;->mCanceltoForget:Z

    goto :goto_0

    .line 994
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVzwButton(I)I
    .locals 1
    .param p1, "Position"    # I

    .prologue
    .line 1446
    const/4 v0, -0x1

    .line 1448
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 1461
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->WIFI_VZW_NONE:I

    .line 1464
    :goto_0
    return v0

    .line 1450
    :pswitch_0
    sget v0, Lcom/android/settings/wifi/WifiConfigController;->mVzwPositiveButton:I

    .line 1451
    goto :goto_0

    .line 1454
    :pswitch_1
    sget v0, Lcom/android/settings/wifi/WifiConfigController;->mVzwNeutralButton:I

    .line 1455
    goto :goto_0

    .line 1458
    :pswitch_2
    sget v0, Lcom/android/settings/wifi/WifiConfigController;->mVzwNegativeButton:I

    .line 1459
    goto :goto_0

    .line 1448
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method hideForgetButton()V
    .locals 2

    .prologue
    .line 1218
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getForgetButton()Landroid/widget/Button;

    move-result-object v0

    .line 1219
    .local v0, "forget":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 1222
    :goto_0
    return-void

    .line 1221
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method hideSubmitButton()V
    .locals 2

    .prologue
    .line 1225
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 1226
    .local v0, "submit":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 1229
    :goto_0
    return-void

    .line 1228
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public isEdit()Z
    .locals 1

    .prologue
    .line 3438
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEdit:Z

    return v0
.end method

.method public isNeedToReconnect()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1432
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-nez v2, :cond_1

    .line 1442
    :cond_0
    :goto_0
    return v1

    .line 1436
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1437
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, "newIpAddress":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAddress:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1439
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isNeedToReconnectNetwork()Z
    .locals 3

    .prologue
    .line 1422
    const/4 v0, 0x0

    .line 1423
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPrevInteranetUseOnlyMode:Z

    iget-boolean v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    if-eq v1, v2, :cond_1

    .line 1424
    const/4 v0, 0x1

    .line 1428
    :cond_0
    :goto_0
    return v0

    .line 1425
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mInitIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    if-eq v1, v2, :cond_0

    .line 1426
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNeededPasswordView()Z
    .locals 3

    .prologue
    .line 1400
    const/4 v0, 0x1

    .line 1401
    .local v0, "ret":Z
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_2

    .line 1402
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1403
    .local v1, "spinnerValue":Ljava/lang/String;
    const-string v2, "TLS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SIM"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AKA"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AKA\'"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1404
    :cond_0
    const/4 v0, 0x0

    .line 1409
    .end local v1    # "spinnerValue":Ljava/lang/String;
    :cond_1
    :goto_0
    return v0

    .line 1407
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNeedtoForgetNetwork()Z
    .locals 2

    .prologue
    .line 1413
    const/4 v0, 0x0

    .line 1415
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSsid:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiConfigController;->bIsChangedSecurity:Z

    if-eqz v1, :cond_1

    .line 1416
    :cond_0
    const/4 v0, 0x1

    .line 1418
    :cond_1
    return v0
.end method

.method public isRetryDialog()Z
    .locals 1

    .prologue
    .line 3442
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mRetry:Z

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 19
    .param p1, "view"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 3503
    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCheckedChanged, isChecked = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3504
    invoke-virtual/range {p1 .. p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 3736
    .end local p1    # "view":Landroid/widget/CompoundButton;
    :cond_0
    :goto_0
    return-void

    .line 3507
    .restart local p1    # "view":Landroid/widget/CompoundButton;
    :sswitch_0
    const-string v2, "content://com.sec.knox.provider2/WifiPolicy"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 3508
    .local v3, "uri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "getPasswordHidden"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 3510
    .local v11, "cr":Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 3512
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    .line 3513
    const-string v2, "getPasswordHidden"

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v4, "true"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3514
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v17

    .line 3515
    .local v17, "pos":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz p2, :cond_2

    const/16 v2, 0x90

    :goto_1
    or-int/lit8 v2, v2, 0x1

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 3519
    if-ltz v17, :cond_1

    .line 3520
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 3522
    :cond_1
    const-string v2, "WifiConfigController"

    const-string v4, "onCheckedChanged: EDM is called when the user clicks the show password"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3527
    .end local v17    # "pos":I
    :goto_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 3515
    .restart local v17    # "pos":I
    :cond_2
    const/16 v2, 0x80

    goto :goto_1

    .line 3524
    .end local v17    # "pos":I
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->updatePasswordVisibility(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3527
    :catchall_0
    move-exception v2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v2

    .line 3542
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v11    # "cr":Landroid/database/Cursor;
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05eb

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    .line 3545
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v2, v2, Lcom/android/settings/wifi/AccessPoint;->networkId:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 3546
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 3547
    .local v10, "config":Landroid/net/wifi/WifiConfiguration;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAutoRecoonectCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    const/4 v2, 0x1

    :goto_3
    iput v2, v10, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    .line 3548
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2, v10}, Lcom/android/settings/wifi/AccessPoint;->updateConfig(Landroid/net/wifi/WifiConfiguration;)V

    .line 3550
    new-instance v15, Landroid/os/Message;

    invoke-direct {v15}, Landroid/os/Message;-><init>()V

    .line 3551
    .local v15, "msg":Landroid/os/Message;
    const/16 v2, 0x47

    iput v2, v15, Landroid/os/Message;->what:I

    .line 3552
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 3553
    .local v8, "args":Landroid/os/Bundle;
    const-string v2, "netId"

    iget v4, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3554
    const-string v2, "autojoin"

    iget v4, v10, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    invoke-virtual {v8, v2, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3555
    iput-object v8, v15, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3557
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v15}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    .line 3558
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->saveConfiguration()Z

    .line 3559
    iget v2, v10, Landroid/net/wifi/WifiConfiguration;->autojoin:I

    if-nez v2, :cond_0

    .line 3560
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v4, v10, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto/16 :goto_0

    .line 3547
    .end local v8    # "args":Landroid/os/Bundle;
    .end local v15    # "msg":Landroid/os/Message;
    :cond_4
    const/4 v2, 0x0

    goto :goto_3

    .line 3566
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :sswitch_2
    if-eqz p2, :cond_c

    .line 3567
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_8

    .line 3569
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    .line 3570
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v2

    sget-object v4, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v2, v4, :cond_7

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v2

    sget-object v4, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v2, v4, :cond_7

    .line 3572
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3583
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 3584
    .local v12, "focusedView":Landroid/view/View;
    if-eqz v12, :cond_a

    .line 3585
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    .line 3586
    .local v14, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_6

    .line 3587
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    if-eqz v2, :cond_5

    .line 3588
    invoke-virtual {v12}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3590
    :cond_5
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/settings/wifi/WifiConfigController$8;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings/wifi/WifiConfigController$8;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    const-wide/16 v6, 0x96

    invoke-virtual {v2, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3597
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05ca

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 3601
    .end local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p2, :cond_b

    const-string v2, "ON"

    :goto_6
    invoke-static {v4, v2}, Lcom/android/settings/wifi/WifiSettings;->insertShowAdvancedOptionsLogging(Landroid/net/wifi/WifiManager;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3574
    .end local v12    # "focusedView":Landroid/view/View;
    .restart local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto :goto_4

    .line 3577
    .end local v10    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto :goto_4

    .line 3580
    :cond_9
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto :goto_4

    .line 3599
    .restart local v12    # "focusedView":Landroid/view/View;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05ca

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 3601
    :cond_b
    const-string v2, "OFF"

    goto :goto_6

    .line 3603
    .end local v12    # "focusedView":Landroid/view/View;
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v2, :cond_11

    .line 3605
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3606
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    .line 3607
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v14

    .line 3608
    .restart local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_d

    .line 3609
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v14, v2}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3611
    :cond_d
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 3620
    .end local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_e
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v12

    .line 3622
    .restart local v12    # "focusedView":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v2, :cond_15

    .line 3623
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v18

    .line 3624
    .local v18, "spinnerValue":Ljava/lang/String;
    const-string v2, "SIM"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "AKA"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    const-string v2, "AKA\'"

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3625
    :cond_f
    if-eqz v12, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v2, :cond_10

    .line 3626
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    .line 3627
    .restart local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_10

    .line 3628
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3629
    invoke-virtual {v12}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3665
    .end local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v18    # "spinnerValue":Ljava/lang/String;
    :cond_10
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05ca

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 3613
    .end local v12    # "focusedView":Landroid/view/View;
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v2, :cond_12

    .line 3614
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_7

    .line 3615
    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v2, :cond_13

    .line 3616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_7

    .line 3617
    :cond_13
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v2, :cond_e

    .line 3618
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_7

    .line 3633
    .restart local v12    # "focusedView":Landroid/view/View;
    .restart local v18    # "spinnerValue":Ljava/lang/String;
    :cond_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3634
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto :goto_8

    .line 3637
    .end local v18    # "spinnerValue":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v2, :cond_16

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v2, v4, :cond_16

    .line 3640
    if-eqz v12, :cond_10

    .line 3641
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    .line 3642
    .restart local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_10

    .line 3643
    const-string v2, "WifiConfigController"

    const-string v4, "    **** [onClick] connected, uncheked hideSoftInputFromWindow *****"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3644
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3645
    invoke-virtual {v12}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_8

    .line 3649
    .end local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v2, :cond_17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v2, :cond_17

    .line 3652
    if-eqz v12, :cond_10

    .line 3653
    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "input_method"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/inputmethod/InputMethodManager;

    .line 3654
    .restart local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v14, :cond_10

    .line 3655
    const-string v2, "WifiConfigController"

    const-string v4, "    **** [onClick] uncheked hideSoftInputFromWindow *****"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3656
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3657
    invoke-virtual {v12}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_8

    .line 3661
    .end local v14    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_17
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3662
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_8

    .line 3669
    .end local v12    # "focusedView":Landroid/view/View;
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/CheckBox;

    .line 3670
    .local v13, "ftCheckbox":Landroid/widget/CheckBox;
    invoke-virtual {v13}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 3672
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    if-eqz v2, :cond_0

    .line 3673
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 3674
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 3678
    .end local v13    # "ftCheckbox":Landroid/widget/CheckBox;
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e8

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/CheckBox;

    .line 3679
    .local v9, "cckmCheckbox":Landroid/widget/CheckBox;
    invoke-virtual {v9}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    .line 3681
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedCckm:Z

    if-eqz v2, :cond_0

    .line 3682
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIsCheckedFt:Z

    .line 3683
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05e6

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 3687
    .end local v9    # "cckmCheckbox":Landroid/widget/CheckBox;
    :sswitch_5
    if-eqz p2, :cond_18

    .line 3688
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05df

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3689
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 3690
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 3691
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 3692
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->requestFocus()Z

    .line 3693
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_0

    .line 3697
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05df

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3698
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 3699
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v4, 0x6

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_0

    .line 3704
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-nez v2, :cond_19

    const/16 v16, 0x1

    .line 3705
    .local v16, "needSisConfirm":Z
    :goto_9
    if-eqz v16, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mShowOnceFlagforSis:Z

    if-nez v2, :cond_1a

    .line 3706
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/wifi/WifiConfigController;->showSisNotification()V

    goto/16 :goto_0

    .line 3704
    .end local v16    # "needSisConfirm":Z
    :cond_19
    const/16 v16, 0x0

    goto :goto_9

    .line 3708
    .restart local v16    # "needSisConfirm":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    if-nez v2, :cond_1b

    const/4 v2, 0x1

    :goto_a
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    .line 3709
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyCheckbox:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings/wifi/WifiConfigController;->mIntranetOnlyMode:Z

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 3708
    :cond_1b
    const/4 v2, 0x0

    goto :goto_a

    .line 3714
    .end local v16    # "needSisConfirm":Z
    :sswitch_7
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/widget/CompoundButton;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 3715
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05ed

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3716
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05ee

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3717
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 3718
    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(CheckBox) mSimNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3720
    :cond_1c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05ed

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 3725
    .restart local p1    # "view":Landroid/widget/CompoundButton;
    :sswitch_8
    check-cast p1, Landroid/widget/CheckBox;

    .end local p1    # "view":Landroid/widget/CompoundButton;
    invoke-virtual/range {p1 .. p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05ed

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05ee

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3728
    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    .line 3729
    const-string v2, "WifiConfigController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "(CheckBox) mSimNum : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/wifi/WifiConfigController;->mSimNum:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 3731
    :cond_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0d05ee

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0

    .line 3504
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0d056c -> :sswitch_0
        0x7f0d05c9 -> :sswitch_2
        0x7f0d05de -> :sswitch_5
        0x7f0d05e3 -> :sswitch_6
        0x7f0d05e6 -> :sswitch_3
        0x7f0d05e8 -> :sswitch_4
        0x7f0d05eb -> :sswitch_1
        0x7f0d05ed -> :sswitch_7
        0x7f0d05ee -> :sswitch_8
    .end sparse-switch
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x2

    const/4 v2, 0x1

    .line 3035
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 3036
    .local v0, "focusedView":Landroid/view/View;
    const/4 v1, 0x5

    if-ne p2, v1, :cond_15

    .line 3037
    if-eqz v0, :cond_0

    .line 3038
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3039
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v1, :cond_3

    .line 3040
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05c9

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3041
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 3042
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3043
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    :goto_0
    move v1, v2

    .line 3120
    :goto_1
    return v1

    .line 3044
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-nez v1, :cond_0

    .line 3045
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    .line 3046
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 3047
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3048
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 3049
    :cond_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 3050
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3051
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto :goto_0

    .line 3056
    :cond_3
    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_4

    .line 3057
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3058
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 3060
    :cond_4
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3061
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 3063
    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3064
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0d05be

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 3065
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 3067
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3068
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 3070
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3071
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3072
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 3073
    :cond_8
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3074
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_9

    .line 3075
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3076
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 3078
    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v2, :cond_a

    .line 3079
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3080
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3081
    :cond_a
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-ne v1, v4, :cond_0

    .line 3082
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3083
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3086
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 3087
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3088
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 3089
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 3090
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3091
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3092
    :cond_d
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 3093
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3094
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 3095
    :cond_e
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 3096
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 3097
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 3098
    :cond_f
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 3099
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    .line 3100
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3101
    :cond_10
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3102
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3104
    :cond_11
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3105
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3106
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3107
    :cond_12
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 3108
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3109
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3110
    :cond_13
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 3111
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3112
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3113
    :cond_14
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthId:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3114
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 3115
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    goto/16 :goto_0

    .line 3120
    :cond_15
    const/4 v1, 0x0

    goto/16 :goto_1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 3767
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_e

    .line 3768
    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 3769
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 3770
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->updateShowSisOption()V

    .line 3771
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3774
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showKeyMgmtFields()V

    .line 3784
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_0

    .line 3785
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_11

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_11

    .line 3786
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3818
    :cond_0
    :goto_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_2

    .line 3820
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_18

    .line 3821
    const-string v4, "PEAP"

    .line 3825
    .local v4, "spinnerValue":Ljava/lang/String;
    :goto_2
    const-string v5, "SIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "AKA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "AKA\'"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 3826
    :cond_1
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v5, :cond_19

    .line 3827
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3841
    .end local v4    # "spinnerValue":Ljava/lang/String;
    :cond_2
    :goto_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-eqz v5, :cond_5

    .line 3842
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_5

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v5, :cond_5

    .line 3843
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v5, :cond_4

    .line 3844
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3845
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 3846
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_3

    .line 3847
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v2, v5}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 3849
    :cond_3
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 3851
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_1b

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_1b

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_1b

    .line 3853
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3859
    :cond_5
    :goto_4
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0d05c9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 3860
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_1c

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1c

    .line 3861
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3862
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eq p1, v5, :cond_6

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v5, :cond_7

    .line 3865
    :cond_6
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 3867
    :cond_7
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3868
    :cond_8
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    .line 3899
    :cond_9
    :goto_5
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_b

    .line 3900
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_23

    .line 3901
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_b

    .line 3903
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_21

    .line 3904
    const-string v4, "PEAP"

    .line 3908
    .restart local v4    # "spinnerValue":Ljava/lang/String;
    :goto_6
    const-string v5, "SIM"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "AKA"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    const-string v5, "AKA\'"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    .line 3909
    :cond_a
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3910
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_b

    .line 3911
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    .line 3912
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3945
    .end local v4    # "spinnerValue":Ljava/lang/String;
    :cond_b
    :goto_7
    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    if-eqz v5, :cond_c

    .line 3947
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v1

    .line 3948
    .local v1, "focusedView":Landroid/view/View;
    if-eqz v1, :cond_29

    .line 3949
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 3950
    .local v3, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_c

    .line 3951
    const-string v5, "WifiConfigController"

    const-string v6, "    **** [onItemSelected] hideSoftInputFromWindow *****"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3952
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 3963
    .end local v1    # "focusedView":Landroid/view/View;
    .end local v3    # "inputManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_c
    :goto_8
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_d

    iget-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    if-nez v5, :cond_d

    .line 3965
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    new-instance v6, Lcom/android/settings/wifi/WifiConfigController$11;

    invoke-direct {v6, p0}, Lcom/android/settings/wifi/WifiConfigController$11;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 3971
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 3972
    return-void

    .line 3776
    :cond_e
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_f

    .line 3777
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 3778
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto/16 :goto_0

    .line 3779
    :cond_f
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_10

    .line 3780
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    goto/16 :goto_0

    .line 3782
    :cond_10
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    goto/16 :goto_0

    .line 3788
    :cond_11
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3789
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_13

    .line 3790
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v5, :cond_12

    .line 3791
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    .line 3792
    :cond_12
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3793
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    .line 3796
    :cond_13
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    if-eqz v5, :cond_14

    .line 3797
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_15

    .line 3798
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 3803
    :cond_14
    :goto_9
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    if-eqz v5, :cond_17

    .line 3804
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0d05de

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_16

    .line 3805
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 3806
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3807
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyAuthPassword:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    .line 3800
    :cond_15
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_9

    .line 3810
    :cond_16
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    .line 3812
    :cond_17
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 3813
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setImeOptions(I)V

    goto/16 :goto_1

    .line 3823
    :cond_18
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "spinnerValue":Ljava/lang/String;
    goto/16 :goto_2

    .line 3829
    :cond_19
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3830
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_3

    .line 3833
    :cond_1a
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v5, :cond_2

    .line 3834
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0d05c9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_2

    .line 3835
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3836
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_3

    .line 3855
    .end local v4    # "spinnerValue":Ljava/lang/String;
    :cond_1b
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_4

    .line 3870
    :cond_1c
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_20

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_20

    .line 3871
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-nez v5, :cond_1f

    .line 3872
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_1d

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-nez v5, :cond_1e

    .line 3873
    :cond_1d
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3891
    :cond_1e
    :goto_a
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v6, :cond_9

    .line 3892
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 3893
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v5

    sget-object v6, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v5, v6, :cond_9

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v5

    sget-object v6, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v5, v6, :cond_9

    .line 3895
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    goto/16 :goto_5

    .line 3876
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_1f
    iget v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-nez v5, :cond_1e

    .line 3877
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_a

    .line 3887
    :cond_20
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eqz v5, :cond_1e

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    if-eqz v5, :cond_1e

    .line 3888
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/EditText;

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_a

    .line 3906
    :cond_21
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "spinnerValue":Ljava/lang/String;
    goto/16 :goto_6

    .line 3916
    :cond_22
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    if-eqz v5, :cond_b

    .line 3917
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v6, 0x7f0d05c9

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    if-nez v5, :cond_b

    .line 3918
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3919
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_7

    .line 3924
    .end local v4    # "spinnerValue":Ljava/lang/String;
    :cond_23
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_26

    .line 3926
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3927
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eq p1, v5, :cond_24

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_25

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_25

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_25

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_24

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v5, :cond_25

    .line 3930
    :cond_24
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    .line 3932
    :cond_25
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_7

    .line 3933
    :cond_26
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 3935
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/wifi/WifiConfigController;->isRequestHideKeyboard:Z

    .line 3936
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-eq p1, v5, :cond_27

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, v5, :cond_28

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v5

    if-nez v5, :cond_28

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    if-eqz v5, :cond_28

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settings/wifi/AccessPoint;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    sget-object v6, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v5, v6, :cond_27

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settings/wifi/AccessPoint;

    iget v5, v5, Lcom/android/settings/wifi/AccessPoint;->security:I

    if-nez v5, :cond_28

    .line 3939
    :cond_27
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->requestFocus()Z

    .line 3941
    :cond_28
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/settings/wifi/WifiConfigController;->showSoftKeyboard(Z)V

    goto/16 :goto_7

    .line 3955
    .restart local v1    # "focusedView":Landroid/view/View;
    :cond_29
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 3956
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_c

    .line 3957
    const-string v5, "WifiConfigController"

    const-string v6, "    **** [onItemSelected] hideSoftInputFromWindow *****"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3958
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto/16 :goto_8
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 3977
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 3499
    return-void
.end method

.method public updateShowAdvancedOptions()V
    .locals 3

    .prologue
    const v2, 0x7f0d05ca

    .line 1019
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05c9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1024
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateShowPassword()V
    .locals 3

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1010
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0d056c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x90

    :goto_0
    or-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 1014
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1016
    :cond_0
    return-void

    .line 1010
    :cond_1
    const/16 v0, 0x80

    goto :goto_0
.end method

.method public updateShowProxyAuthenticationOptions()V
    .locals 3

    .prologue
    const v2, 0x7f0d05df

    .line 1027
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0d05de

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1028
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1033
    return-void

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
