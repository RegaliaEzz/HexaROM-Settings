.class Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;
.super Ljava/lang/Object;
.source "ChooseLockUniversal.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->attachListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 552
    const-string v5, "ChooseLockUniversal"

    const-string v6, "confirm Clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    .line 556
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$600(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    move-result-object v5

    sget-object v6, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v5, v6, :cond_2

    .line 558
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$702(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Ljava/lang/String;)Ljava/lang/String;

    .line 560
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 561
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    .line 563
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$800(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/Button;

    move-result-object v5

    const v6, 0x7f0e0a8c

    invoke-virtual {v5, v6}, Landroid/widget/Button;->setText(I)V

    .line 564
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$800(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 565
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$900(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 567
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0a7d

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 569
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1100(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 570
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/TextView;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v7}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v7}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0e15ed

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 576
    :cond_0
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    sget-object v6, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    # setter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;
    invoke-static {v5, v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$602(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;)Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    .line 577
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$200(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # invokes: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->clearStepCircles()V
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1200(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    .line 580
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # setter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;
    invoke-static {v5, v9}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$002(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 581
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # setter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;
    invoke-static {v5, v9}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$402(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 645
    :cond_1
    :goto_0
    return-void

    .line 588
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$700(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 589
    const-string v5, "ChooseLockUniversal"

    const-string v6, "Both passwords match"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-static {}, Lcom/android/settings/Utils;->isSupportPatternBackupPin()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 594
    const/4 v3, 0x4

    .line 595
    .local v3, "minLength":I
    const/16 v2, 0x8

    .line 597
    .local v2, "maxLength":I
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/settings/ChooseLockAdditionalPin;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v1

    .line 599
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 600
    const-string v5, "lockscreen.password_min"

    const/4 v6, 0x4

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 601
    const-string v5, "lockscreen.password_max"

    const/16 v6, 0x8

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 603
    const/16 v4, 0x1000

    .line 604
    .local v4, "quality":I
    const-string v5, "lockscreen.password_type"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 605
    const-string v5, "isUniversalLock"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 606
    const-string v5, "firstlock"

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    const/high16 v5, 0x2000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 611
    :try_start_0
    const-string v5, "ChooseLockUniversal"

    const-string v6, "launching back up PIN"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v5, v1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->startActivity(Landroid/content/Intent;)V

    .line 613
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v0

    .line 615
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 620
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "maxLength":I
    .end local v3    # "minLength":I
    .end local v4    # "quality":I
    :cond_3
    const-string v5, "ChooseLockUniversal"

    const-string v6, "back up PIN not supported"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "universal_lock_switch_state"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 623
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1300(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1300(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentUser()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(I)V

    .line 624
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1300(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    .line 625
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1300(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->saveLockUniversal(Ljava/util/List;)V

    .line 626
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->finish()V

    .line 629
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 630
    .restart local v1    # "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 631
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v5, v1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 638
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$800(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/Button;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 639
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$1000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    invoke-virtual {v6}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e0a76

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    .line 642
    iget-object v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;->this$0:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;

    # getter for: Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v5}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    goto/16 :goto_0
.end method
