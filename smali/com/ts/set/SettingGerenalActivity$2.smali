.class Lcom/ts/set/SettingGerenalActivity$2;
.super Ljava/lang/Object;
.source "SettingGerenalActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/set/SettingGerenalActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/set/SettingGerenalActivity;


# direct methods
.method constructor <init>(Lcom/ts/set/SettingGerenalActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/set/SettingGerenalActivity$2;->this$0:Lcom/ts/set/SettingGerenalActivity;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 277
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 289
    :goto_0
    return-void

    .line 280
    :pswitch_0
    invoke-static {}, Lcom/yyw/ts70xhw/StSet;->SetDefault()I

    .line 281
    const/16 v0, 0x13

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 282
    iget-object v0, p0, Lcom/ts/set/SettingGerenalActivity$2;->this$0:Lcom/ts/set/SettingGerenalActivity;

    iget-object v0, v0, Lcom/ts/set/SettingGerenalActivity;->FtSetDialog:Lcom/ts/set/setview/SetItemDialog;

    invoke-virtual {v0}, Lcom/ts/set/setview/SetItemDialog;->Hide()V

    goto :goto_0

    .line 285
    :pswitch_1
    iget-object v0, p0, Lcom/ts/set/SettingGerenalActivity$2;->this$0:Lcom/ts/set/SettingGerenalActivity;

    iget-object v0, v0, Lcom/ts/set/SettingGerenalActivity;->FtSetDialog:Lcom/ts/set/setview/SetItemDialog;

    invoke-virtual {v0}, Lcom/ts/set/setview/SetItemDialog;->Hide()V

    goto :goto_0

    .line 277
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
