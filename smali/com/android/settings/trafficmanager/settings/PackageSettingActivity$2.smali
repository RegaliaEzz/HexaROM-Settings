.class Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$2;
.super Ljava/lang/Object;
.source "PackageSettingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->sendText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;)V
    .locals 0

    .prologue
    .line 856
    iput-object p1, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$2;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 858
    iget-object v0, p0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity$2;->this$0:Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;

    iget-object v0, v0, Lcom/android/settings/trafficmanager/settings/PackageSettingActivity;->databaseHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 859
    return-void
.end method
