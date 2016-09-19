.class public Lcom/android/settings/wifi/WifiPickerDialog;
.super Landroid/app/Activity;
.source "WifiPickerDialog.java"


# instance fields
.field private am:Landroid/app/ActivityManager;

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mLastOrientation:I

.field private mLastToast:Landroid/widget/Toast;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mWindowmanager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    .line 50
    new-instance v0, Lcom/android/settings/wifi/WifiPickerDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiPickerDialog$1;-><init>(Lcom/android/settings/wifi/WifiPickerDialog;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiPickerDialog;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/wifi/WifiPickerDialog;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiPickerDialog;->requestSystemKeyEvents(Z)V

    return-void
.end method

.method private checkAndShowWindowPinnedMsg()Z
    .locals 9

    .prologue
    const/4 v4, 0x1

    .line 194
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->am:Landroid/app/ActivityManager;

    invoke-virtual {v5}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v2

    .line 195
    .local v2, "isWindowPinned":Z
    const-string v5, "WifiPickerDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkAndShowWindowPinnedMsg() -:- isWindowPinned ==> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    if-eqz v2, :cond_4

    .line 199
    :try_start_0
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v1

    .line 200
    .local v1, "hasPermanentMenuKey":Z
    if-eqz v1, :cond_2

    .line 201
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "tw_lock_to_app_toast_accessible"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 213
    .local v3, "text":I
    :goto_0
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    if-eqz v5, :cond_0

    .line 214
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->cancel()V

    .line 215
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    .line 217
    :cond_0
    const/4 v5, 0x1

    invoke-static {p0, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    .line 218
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 224
    .end local v1    # "hasPermanentMenuKey":Z
    .end local v3    # "text":I
    :goto_1
    return v4

    .line 204
    .restart local v1    # "hasPermanentMenuKey":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "tw_lock_to_app_toast"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "text":I
    goto :goto_0

    .line 207
    .end local v3    # "text":I
    :cond_2
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "lock_to_app_toast_accessible"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .restart local v3    # "text":I
    goto :goto_0

    .line 210
    .end local v3    # "text":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "lock_to_app_toast"

    const-string v7, "string"

    const-string v8, "android"

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .restart local v3    # "text":I
    goto :goto_0

    .line 219
    .end local v1    # "hasPermanentMenuKey":Z
    .end local v3    # "text":I
    :catch_0
    move-exception v0

    .line 220
    .local v0, "e":Ljava/lang/NullPointerException;
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 224
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_4
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private requestSystemKeyEvents(Z)V
    .locals 4
    .param p1, "enabled"    # Z

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 128
    .local v0, "component":Landroid/content/ComponentName;
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    const/4 v3, 0x4

    invoke-interface {v2, v3, v0, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 130
    iget-object v2, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    const/4 v3, 0x3

    invoke-interface {v2, v3, v0, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 131
    iget-object v2, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    const/16 v3, 0xbb

    invoke-interface {v2, v3, v0, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 132
    iget-object v2, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    const/16 v3, 0x3e9

    invoke-interface {v2, v3, v0, p1}, Landroid/view/IWindowManager;->requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z

    .line 139
    :goto_0
    return-void

    .line 134
    :cond_0
    const-string v2, "WifiPickerDialog"

    const-string v3, "Windowmanager is not yet initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .line 137
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "WifiPickerDialog"

    const-string v3, "problem caught in requesting for system key event."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    iget v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 189
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mLastOrientation:I

    .line 190
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v5, "accessibility"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/accessibility/AccessibilityManager;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 74
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager;

    iput-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->am:Landroid/app/ActivityManager;

    .line 75
    const-string v5, "window"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mWindowmanager:Landroid/view/IWindowManager;

    .line 82
    const v5, 0x7f040275

    :try_start_0
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiPickerDialog;->setContentView(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :goto_0
    const v5, 0x7f0e0384

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiPickerDialog;->setTitle(I)V

    .line 90
    const v5, 0x1020016

    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiPickerDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 91
    .local v4, "titleView":Landroid/widget/TextView;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLayoutDirection(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 94
    .local v1, "decorView":Landroid/view/View;
    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 97
    instance-of v5, v0, Landroid/graphics/drawable/NinePatchDrawable;

    if-eqz v5, :cond_0

    .line 98
    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    .end local v0    # "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/graphics/drawable/NinePatchDrawable;->setEnableShadow(Z)V

    .line 99
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 104
    :cond_0
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 105
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v5, "com.samsung.android.action.LOCK_TASK_MODE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v5, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v5, v3}, Lcom/android/settings/wifi/WifiPickerDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x30

    invoke-virtual {v5, v6}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 108
    return-void

    .line 84
    .end local v1    # "decorView":Landroid/view/View;
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v4    # "titleView":Landroid/widget/TextView;
    :catch_0
    move-exception v2

    .line 85
    .local v2, "e":Ljava/lang/Exception;
    const-string v5, "WifiPickerDialog"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception occured from wifi_picker_dialog.xml, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->finish()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, p0, Lcom/android/settings/wifi/WifiPickerDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiPickerDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 234
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 235
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 111
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    const/16 v0, 0xbb

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiPickerDialog;->checkAndShowWindowPinnedMsg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    const-string v0, "WifiPickerDialog"

    const-string v1, "key consumed when window is pinned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, 0x1

    .line 122
    :goto_0
    return v0

    .line 119
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 122
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 165
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 173
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiPickerDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 174
    .local v1, "mStatusBar":Landroid/app/StatusBarManager;
    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 176
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.sec.kidsplat.quickpanel.PANEL_CLOSE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 177
    .local v0, "intent":Landroid/content/Intent;
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/wifi/WifiPickerDialog;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 178
    return-void
.end method
