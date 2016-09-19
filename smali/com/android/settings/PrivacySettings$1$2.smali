.class Lcom/android/settings/PrivacySettings$1$2;
.super Ljava/lang/Object;
.source "PrivacySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/PrivacySettings$1;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/PrivacySettings$1;


# direct methods
.method constructor <init>(Lcom/android/settings/PrivacySettings$1;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/android/settings/PrivacySettings$1$2;->this$1:Lcom/android/settings/PrivacySettings$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 301
    const/4 v3, 0x0

    .line 302
    .local v3, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    .line 304
    .local v1, "i":Landroid/content/Intent;
    :try_start_0
    const-string v4, "samsungapps://ProductDetail/com.sec.android.easyMover"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 305
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    .end local v1    # "i":Landroid/content/Intent;
    .local v2, "i":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    :try_start_1
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 307
    const v4, 0x8000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 308
    iget-object v4, p0, Lcom/android/settings/PrivacySettings$1$2;->this$1:Lcom/android/settings/PrivacySettings$1;

    iget-object v4, v4, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-virtual {v4}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 309
    const-string v4, "PrivacySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startMarket resolveActivity is not null, start market service, uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v4, p0, Lcom/android/settings/PrivacySettings$1$2;->this$1:Lcom/android/settings/PrivacySettings$1;

    iget-object v4, v4, Lcom/android/settings/PrivacySettings$1;->this$0:Lcom/android/settings/PrivacySettings;

    invoke-virtual {v4, v2}, Lcom/android/settings/PrivacySettings;->startActivity(Landroid/content/Intent;)V

    .line 311
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    move-object v1, v2

    .line 318
    .end local v2    # "i":Landroid/content/Intent;
    .restart local v1    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 313
    :catch_0
    move-exception v0

    .line 314
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    const-string v4, "PrivacySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "linkToMarket got an error, uri : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    const-string v4, "PrivacySettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can not link to market, Exception e: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 313
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    .end local v1    # "i":Landroid/content/Intent;
    .restart local v2    # "i":Landroid/content/Intent;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "i":Landroid/content/Intent;
    .restart local v1    # "i":Landroid/content/Intent;
    goto :goto_1
.end method
