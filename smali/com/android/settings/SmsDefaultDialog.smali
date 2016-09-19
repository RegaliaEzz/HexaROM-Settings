.class public final Lcom/android/settings/SmsDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmsDefaultDialog$AppListAdapter;
    }
.end annotation


# instance fields
.field private mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 201
    return-void
.end method

.method private buildDialog(Ljava/lang/String;)Z
    .locals 13
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const v12, 0x7f0e13a5

    const v11, 0x7f0e076c

    const/4 v10, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    const-string v8, "phone"

    invoke-virtual {p0, v8}, Lcom/android/settings/SmsDefaultDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 92
    .local v5, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v8

    if-nez v8, :cond_1

    .line 94
    const-string v7, "SmsDefaultDialog"

    const-string v8, "No phone, no SMS"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_0
    :goto_0
    return v6

    .line 98
    :cond_1
    const/4 v0, 0x0

    .line 99
    .local v0, "isDefaultSms":Z
    const/4 v1, 0x0

    .line 100
    .local v1, "messageName":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/SmsDefaultDialog;->getMessageName()Ljava/lang/String;

    move-result-object v1

    .line 102
    iget-object v4, p0, Lcom/android/settings/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 103
    .local v4, "p":Lcom/android/internal/app/AlertController$AlertParams;
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v8

    iput-object v8, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 105
    iget-object v8, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    if-eqz v8, :cond_b

    .line 108
    iget-object v8, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v8, v8, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    iput-object v8, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 109
    const/4 v2, 0x0

    .line 110
    .local v2, "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    invoke-static {p0, v7}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v3

    .line 111
    .local v3, "oldSmsComponent":Landroid/content/ComponentName;
    if-eqz v3, :cond_2

    .line 112
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object v2

    .line 114
    iget-object v8, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v9, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 120
    :cond_2
    const-string v8, "com.android.mms"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 121
    const/4 v0, 0x1

    .line 126
    :goto_1
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 127
    const v8, 0x7f0e13a7

    invoke-virtual {p0, v8}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 133
    :goto_2
    invoke-static {}, Lcom/android/settings/Utils;->isAllNAVendor()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-static {}, Lcom/android/settings/Utils;->isJapanModelWithoutSecMessage()Z

    move-result v8

    if-eqz v8, :cond_7

    .line 134
    :cond_3
    if-eqz v2, :cond_6

    .line 135
    const v8, 0x7f0e13a8

    new-array v9, v10, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v10, v10, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v10, v9, v6

    iget-object v6, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v6, v9, v7

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 157
    :goto_3
    const v6, 0x7f0e00b8

    invoke-virtual {p0, v6}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 158
    const v6, 0x7f0e00b9

    invoke-virtual {p0, v6}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 159
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 160
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 169
    .end local v2    # "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .end local v3    # "oldSmsComponent":Landroid/content/ComponentName;
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->setupAlert()V

    move v6, v7

    .line 171
    goto/16 :goto_0

    .line 123
    .restart local v2    # "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .restart local v3    # "oldSmsComponent":Landroid/content/ComponentName;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 129
    :cond_5
    const v8, 0x7f0e076a

    invoke-virtual {p0, v8}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_2

    .line 138
    :cond_6
    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-virtual {p0, v11, v8}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_3

    .line 141
    :cond_7
    if-eqz v2, :cond_9

    .line 142
    if-eqz v0, :cond_8

    .line 143
    const v8, 0x7f0e076b

    new-array v9, v10, [Ljava/lang/Object;

    iget-object v10, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v10, v10, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v10, v9, v6

    iget-object v6, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v6, v9, v7

    invoke-virtual {p0, v8, v9}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_3

    .line 146
    :cond_8
    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v9, v8, v6

    aput-object v1, v8, v7

    invoke-virtual {p0, v12, v8}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_3

    .line 149
    :cond_9
    if-eqz v0, :cond_a

    .line 150
    new-array v8, v7, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v9, v8, v6

    invoke-virtual {p0, v11, v8}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_3

    .line 152
    :cond_a
    new-array v8, v10, [Ljava/lang/Object;

    iget-object v9, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v9, v9, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mApplicationName:Ljava/lang/String;

    aput-object v9, v8, v6

    aput-object v1, v8, v7

    invoke-virtual {p0, v12, v8}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto/16 :goto_3

    .line 163
    .end local v2    # "oldSmsApplicationData":Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;
    .end local v3    # "oldSmsComponent":Landroid/content/ComponentName;
    :cond_b
    invoke-direct {p0}, Lcom/android/settings/SmsDefaultDialog;->getMessageName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 164
    new-instance v6, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;

    invoke-direct {v6, p0}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;-><init>(Lcom/android/settings/SmsDefaultDialog;)V

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 165
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 166
    const v6, 0x7f0e01ba

    invoke-virtual {p0, v6}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 167
    iput-object p0, v4, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    goto/16 :goto_4
.end method

.method private getMessageName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 175
    const/4 v2, 0x0

    .line 177
    .local v2, "messageAppName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 178
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v0, 0x0

    .line 180
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_0

    .line 181
    :try_start_0
    const-string v4, "com.android.mms"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 188
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .end local v2    # "messageAppName":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 190
    .restart local v2    # "messageAppName":Ljava/lang/String;
    const-string v4, "SmsDefaultDialog"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ai is not null get messageAppName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    :goto_1
    return-object v2

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 185
    const-string v4, "SmsDefaultDialog"

    const-string v5, "Exception occur ai is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 192
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const v4, 0x7f0e13a6

    invoke-virtual {p0, v4}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v3, -0x1

    .line 68
    packed-switch p2, :pswitch_data_0

    .line 76
    if-ltz p2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v2, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;

    .line 78
    .local v0, "adapter":Lcom/android/settings/SmsDefaultDialog$AppListAdapter;
    invoke-virtual {v0, p2}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->isSelected(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 79
    invoke-virtual {v0, p2}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getPackageName(I)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, "packageName":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 81
    invoke-static {v1, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 82
    invoke-virtual {p0, v3}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 88
    .end local v0    # "adapter":Lcom/android/settings/SmsDefaultDialog$AppListAdapter;
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 70
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {v2, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 71
    invoke-virtual {p0, v3}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 58
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "packageName":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 61
    invoke-direct {p0, v1}, Lcom/android/settings/SmsDefaultDialog;->buildDialog(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->finish()V

    .line 64
    :cond_0
    return-void
.end method
