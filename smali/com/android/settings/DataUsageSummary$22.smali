.class Lcom/android/settings/DataUsageSummary$22;
.super Ljava/lang/Object;
.source "DataUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 3303
    iput-object p1, p0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3306
    const-string v2, "DataUsage/LPF"

    const-string v3, "mVertifyTrafficListener onClick()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3307
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0d01c4

    if-ne v2, v3, :cond_10

    .line 3308
    const-string v2, "DataUsage/LPF"

    const-string v3, "auto check data"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 3311
    .local v15, "prefs":Landroid/content/SharedPreferences;
    const/4 v13, 0x0

    .line 3312
    .local v13, "operator":Ljava/lang/String;
    const/4 v8, 0x0

    .line 3313
    .local v8, "city":Ljava/lang/String;
    const/4 v14, 0x0

    .line 3314
    .local v14, "packageStr":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3315
    .local v4, "sendText":Ljava/lang/String;
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .line 3316
    .local v1, "smsSender":Landroid/telephony/SmsManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 3317
    const-string v2, "DataUsage/LPF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set  Data Monitoring, the sim slot is:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    sput v2, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    .line 3319
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 3320
    const-string v2, "operator_choose_1"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3321
    const-string v2, "city_choose_1"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3322
    const-string v2, "package_choose_1"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3323
    const-string v2, "set_order_editor_1"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3330
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v16

    .line 3331
    .local v16, "subid":[I
    const-string v2, "DataUsage/LPF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set  Data Monitoring, the subid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x0

    aget v6, v16, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    const/4 v2, 0x0

    aget v2, v16, v2

    invoke-static {v2}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v1

    .line 3354
    :goto_1
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "####sendText = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ####operator = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3355
    if-eqz v13, :cond_0

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3356
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    const v3, 0x7f0e16a3

    invoke-virtual {v2, v3}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3357
    .local v17, "warn_string":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3449
    .end local v1    # "smsSender":Landroid/telephony/SmsManager;
    .end local v4    # "sendText":Ljava/lang/String;
    .end local v8    # "city":Ljava/lang/String;
    .end local v13    # "operator":Ljava/lang/String;
    .end local v14    # "packageStr":Ljava/lang/String;
    .end local v15    # "prefs":Landroid/content/SharedPreferences;
    .end local v16    # "subid":[I
    .end local v17    # "warn_string":Ljava/lang/String;
    :cond_1
    :goto_2
    return-void

    .line 3325
    .restart local v1    # "smsSender":Landroid/telephony/SmsManager;
    .restart local v4    # "sendText":Ljava/lang/String;
    .restart local v8    # "city":Ljava/lang/String;
    .restart local v13    # "operator":Ljava/lang/String;
    .restart local v14    # "packageStr":Ljava/lang/String;
    .restart local v15    # "prefs":Landroid/content/SharedPreferences;
    :cond_2
    const-string v2, "operator_choose"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3326
    const-string v2, "city_choose"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3327
    const-string v2, "package_choose"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3328
    const-string v2, "set_order_editor"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 3334
    :cond_3
    const-string v2, "DataUsage/LPF"

    const-string v3, "set  Data Monitoring, only one SIM card"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3335
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    sput v2, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    .line 3336
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 3337
    const-string v2, "operator_choose_1"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3338
    const-string v2, "city_choose_1"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3339
    const-string v2, "package_choose_1"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3340
    const-string v2, "set_order_editor_1"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 3347
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v16

    .line 3348
    .restart local v16    # "subid":[I
    const-string v2, "DataUsage/LPF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set  Data Monitoring, the subid"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v6, 0x0

    aget v6, v16, v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    const/4 v2, 0x0

    aget v2, v16, v2

    invoke-static {v2}, Landroid/telephony/SmsManager;->getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;

    move-result-object v1

    goto/16 :goto_1

    .line 3342
    .end local v16    # "subid":[I
    :cond_4
    const-string v2, "operator_choose"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3343
    const-string v2, "city_choose"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 3344
    const-string v2, "package_choose"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3345
    const-string v2, "set_order_editor"

    const/4 v3, 0x0

    invoke-interface {v15, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    .line 3359
    .restart local v16    # "subid":[I
    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 3360
    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    const v3, 0x7f0e16a3

    invoke-virtual {v2, v3}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3361
    .restart local v17    # "warn_string":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 3363
    .end local v17    # "warn_string":Ljava/lang/String;
    :cond_7
    if-eqz v14, :cond_8

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 3364
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    const v3, 0x7f0e16a3

    invoke-virtual {v2, v3}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 3365
    .restart local v17    # "warn_string":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 3368
    .end local v17    # "warn_string":Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    const v3, 0x7f0e16c6

    invoke-virtual {v2, v3}, Lcom/android/settings/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 3369
    .local v7, "checking_string":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v7, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 3371
    new-instance v12, Landroid/content/Intent;

    sget-object v2, Lcom/android/settings/trafficmanager/SmsReceiverService;->ACTION_SEND_RESPONSE:Ljava/lang/String;

    invoke-direct {v12, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3372
    .local v12, "newIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    const/high16 v6, 0x8000000

    invoke-static {v2, v3, v12, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 3375
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    const-string v2, "CMCC"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 3378
    :try_start_0
    const-string v2, "DataUsage/LPF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set  Data Monitoring, the sim slot is:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    const-string v2, "10086"

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3400
    :cond_a
    :goto_4
    sget v2, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->simCardStatus:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    .line 3401
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mAutoCalibration:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$4700(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3402
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mManualCalibration:Landroid/widget/Button;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$4800(Lcom/android/settings/DataUsageSummary;)Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3405
    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    move-result-object v2

    if-nez v2, :cond_c

    .line 3406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    new-instance v3, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mVertifyTrafficHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->access$4900(Lcom/android/settings/DataUsageSummary;)Landroid/os/Handler;

    move-result-object v6

    # getter for: Lcom/android/settings/DataUsageSummary;->mSMSKeyWork:Ljava/util/HashMap;
    invoke-static {}, Lcom/android/settings/DataUsageSummary;->access$5000()Ljava/util/HashMap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v3, v6, v0}, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;-><init>(Landroid/os/Handler;Ljava/util/HashMap;)V

    # setter for: Lcom/android/settings/DataUsageSummary;->mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;
    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$1302(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;)Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    .line 3408
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mSMSCatchReceiver:Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$1300(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;

    move-result-object v2

    new-instance v3, Lcom/android/settings/DataUsageSummary$22$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/settings/DataUsageSummary$22$1;-><init>(Lcom/android/settings/DataUsageSummary$22;)V

    invoke-virtual {v2, v3}, Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver;->setOnReceivedMessageListener(Lcom/android/settings/trafficmanager/settings/SMSCatchReceiver$MessageListener;)V

    .line 3417
    new-instance v10, Landroid/content/Intent;

    const-string v2, "com.android.settings.trafficmanager.SMS_RECEIVER_STATUS"

    invoke-direct {v10, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3419
    .local v10, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/trafficmanager/SmsReceiverService;

    invoke-virtual {v10, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3421
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$5200(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$StatusReceiver;

    move-result-object v2

    if-nez v2, :cond_d

    .line 3422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    new-instance v3, Lcom/android/settings/DataUsageSummary$StatusReceiver;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-direct {v3, v6, v0}, Lcom/android/settings/DataUsageSummary$StatusReceiver;-><init>(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$1;)V

    # setter for: Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;
    invoke-static {v2, v3}, Lcom/android/settings/DataUsageSummary;->access$5202(Lcom/android/settings/DataUsageSummary;Lcom/android/settings/DataUsageSummary$StatusReceiver;)Lcom/android/settings/DataUsageSummary$StatusReceiver;

    .line 3424
    :cond_d
    new-instance v11, Landroid/content/IntentFilter;

    invoke-direct {v11}, Landroid/content/IntentFilter;-><init>()V

    .line 3425
    .local v11, "mFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.settings.trafficmanager.status"

    invoke-virtual {v11, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mReceiver:Lcom/android/settings/DataUsageSummary$StatusReceiver;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$5200(Lcom/android/settings/DataUsageSummary;)Lcom/android/settings/DataUsageSummary$StatusReceiver;

    move-result-object v3

    invoke-virtual {v2, v3, v11}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 3380
    .end local v10    # "intent":Landroid/content/Intent;
    .end local v11    # "mFilter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v9

    .line 3381
    .local v9, "e":Ljava/lang/Exception;
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send CMCC SMS Exception:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3383
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_e
    const-string v2, "CU"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 3386
    :try_start_1
    const-string v2, "DataUsage/LPF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set  Data Monitoring, the sim slot is:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3387
    const-string v2, "10010"

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_4

    .line 3388
    :catch_1
    move-exception v9

    .line 3389
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send CU SMS Exception:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3391
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_f
    const-string v2, "CTC"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3394
    :try_start_2
    const-string v2, "DataUsage/LPF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set  Data Monitoring, the sim slot is:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    const-string v2, "10001"

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_4

    .line 3396
    :catch_2
    move-exception v9

    .line 3397
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v2, "DataUsage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Send CTC SMS Exception:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 3430
    .end local v1    # "smsSender":Landroid/telephony/SmsManager;
    .end local v4    # "sendText":Ljava/lang/String;
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v7    # "checking_string":Ljava/lang/String;
    .end local v8    # "city":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "newIntent":Landroid/content/Intent;
    .end local v13    # "operator":Ljava/lang/String;
    .end local v14    # "packageStr":Ljava/lang/String;
    .end local v15    # "prefs":Landroid/content/SharedPreferences;
    .end local v16    # "subid":[I
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0d01c5

    if-ne v2, v3, :cond_1

    .line 3432
    const-string v2, "DataUsage/LPF"

    const-string v3, "manual check data"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3433
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    invoke-virtual {v2}, Lcom/android/settings/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getEnabledSimCount(Landroid/content/Context;)I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_13

    .line 3434
    const-string v2, "DataUsage/LPF"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set  Data Monitoring, the sim slot is:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v6}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3435
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    sput v2, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    .line 3436
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    if-eqz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 3437
    :cond_11
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    sput v2, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    .line 3446
    :cond_12
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    iget-object v2, v2, Lcom/android/settings/DataUsageSummary;->mDataUsedEditorFragment:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # getter for: Lcom/android/settings/DataUsageSummary;->mVertifyTrafficHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/settings/DataUsageSummary;->access$4900(Lcom/android/settings/DataUsageSummary;)Landroid/os/Handler;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$DataUsedEditorFragment;->show(Lcom/android/settings/DataUsageSummary;Landroid/os/Handler;)V

    goto/16 :goto_2

    .line 3440
    :cond_13
    const-string v2, "DataUsage/LPF"

    const-string v3, "set  Data Monitoring, only one SIM card"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3441
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    sput v2, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->simSlot:I

    .line 3442
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_12

    .line 3443
    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/DataUsageSummary$22;->this$0:Lcom/android/settings/DataUsageSummary;

    # invokes: Lcom/android/settings/DataUsageSummary;->multiSimGetCurrentSub()I
    invoke-static {v2}, Lcom/android/settings/DataUsageSummary;->access$200(Lcom/android/settings/DataUsageSummary;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/telephony/MultiSimManager;->getSubscriptionId(I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    sput v2, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->subId:I

    goto :goto_5
.end method
