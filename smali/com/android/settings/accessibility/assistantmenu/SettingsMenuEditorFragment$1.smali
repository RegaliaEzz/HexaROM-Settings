.class Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$1;
.super Landroid/os/Handler;
.source "SettingsMenuEditorFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 186
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 196
    :goto_0
    return-void

    .line 188
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;

    # invokes: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->GridViewScroll(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;)V
    invoke-static {v1, v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$000(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$SCROLL_MOTION;)V

    goto :goto_0

    .line 191
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment$1;->this$0:Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;

    # invokes: Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->AfterTranslateAnimationEnd()V
    invoke-static {v0}, Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;->access$100(Lcom/android/settings/accessibility/assistantmenu/SettingsMenuEditorFragment;)V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
