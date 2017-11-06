.class Lcom/ts/set/SettingVideoActivity$2;
.super Ljava/lang/Object;
.source "SettingVideoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/set/SettingVideoActivity;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/set/SettingVideoActivity;


# direct methods
.method constructor <init>(Lcom/ts/set/SettingVideoActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/set/SettingVideoActivity$2;->this$0:Lcom/ts/set/SettingVideoActivity;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 186
    :goto_0
    return-void

    .line 178
    :pswitch_0
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 179
    iget-object v0, p0, Lcom/ts/set/SettingVideoActivity$2;->this$0:Lcom/ts/set/SettingVideoActivity;

    iget-object v0, v0, Lcom/ts/set/SettingVideoActivity;->SetCamMir:Lcom/ts/set/setview/SetItemDialog;

    invoke-virtual {v0}, Lcom/ts/set/setview/SetItemDialog;->Hide()V

    goto :goto_0

    .line 182
    :pswitch_1
    iget-object v0, p0, Lcom/ts/set/SettingVideoActivity$2;->this$0:Lcom/ts/set/SettingVideoActivity;

    iget-object v0, v0, Lcom/ts/set/SettingVideoActivity;->SetCamMir:Lcom/ts/set/setview/SetItemDialog;

    invoke-virtual {v0}, Lcom/ts/set/setview/SetItemDialog;->Hide()V

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
