.class Lcom/android/settings/accessibility/AccessibilitySettingsHearing$3;
.super Ljava/lang/Object;
.source "AccessibilitySettingsHearing.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/AccessibilitySettingsHearing;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 156
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 157
    packed-switch p2, :pswitch_data_0

    .line 172
    :cond_0
    :goto_0
    return v2

    .line 160
    :pswitch_0
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v4}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/accessibility/AccessibilitySettingsHearing$3;->this$0:Lcom/android/settings/accessibility/AccessibilitySettingsHearing;

    invoke-virtual {v5}, Lcom/android/settings/accessibility/AccessibilitySettingsHearing;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v5

    invoke-interface {v4, v5}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, "item":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 162
    const-string v3, "AccessibilitySettings_Hearing"

    const-string v4, "dispatchKeyEvent item is null"

    invoke-static {v3, v4}, Lcom/android/settings/accessibility/AccessibilityUtils;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 164
    :cond_1
    instance-of v4, v0, Landroid/preference/SwitchPreferenceScreen;

    if-eqz v4, :cond_0

    move-object v1, v0

    .line 166
    check-cast v1, Landroid/preference/SwitchPreferenceScreen;

    .line 167
    .local v1, "preference":Landroid/preference/SwitchPreferenceScreen;
    invoke-virtual {v1}, Landroid/preference/SwitchPreferenceScreen;->performClick()V

    move v2, v3

    .line 168
    goto :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
