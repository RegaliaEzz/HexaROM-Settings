.class Lcom/android/settings/AssistantMenuPreferenceFragment$3;
.super Ljava/lang/Object;
.source "AssistantMenuPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/DropDownPreference$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/AssistantMenuPreferenceFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/AssistantMenuPreferenceFragment;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$3;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(ILjava/lang/Object;)Z
    .locals 4
    .param p1, "pos"    # I
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 218
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "newValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 222
    .local v1, "value":I
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$3;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    invoke-virtual {v2}, Lcom/android/settings/AssistantMenuPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "assistant_menu_dominant_hand_type"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 224
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 225
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "com.samsung.android.app.shareaccessibilitysettings.SHARING_COMPLETE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 226
    iget-object v2, p0, Lcom/android/settings/AssistantMenuPreferenceFragment$3;->this$0:Lcom/android/settings/AssistantMenuPreferenceFragment;

    # getter for: Lcom/android/settings/AssistantMenuPreferenceFragment;->mPreferenceFragmentActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/android/settings/AssistantMenuPreferenceFragment;->access$200(Lcom/android/settings/AssistantMenuPreferenceFragment;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 228
    const/4 v2, 0x1

    return v2
.end method
