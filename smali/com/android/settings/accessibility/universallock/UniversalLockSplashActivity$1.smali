.class Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;
.super Ljava/lang/Object;
.source "UniversalLockSplashActivity.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 156
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # getter for: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$000(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # getter for: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVisibility:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$000(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # invokes: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$100(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_visible"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    :cond_0
    :goto_0
    return v2

    .line 160
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # invokes: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$200(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_visible"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 162
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # getter for: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$300(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 163
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # getter for: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVibration:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$300(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-ne v0, v2, :cond_3

    .line 164
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # invokes: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$400(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_vibration"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 166
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # invokes: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$500(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_vibration"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # getter for: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$600(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 169
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # getter for: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetBeep:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$600(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-ne v0, v2, :cond_5

    .line 170
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # invokes: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$700(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_beep"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 172
    :cond_5
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # invokes: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$800(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_beep"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 174
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # getter for: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$900(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # getter for: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->mSetVoice:Landroid/preference/SwitchPreference;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$900(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-ne v0, v2, :cond_7

    .line 176
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # invokes: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$1000(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_voice"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 178
    :cond_7
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity$1;->this$0:Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;

    # invokes: Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->getContentResolver()Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;->access$1100(Lcom/android/settings/accessibility/universallock/UniversalLockSplashActivity;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "universal_lock_voice"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method
