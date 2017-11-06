.class Lcom/ts/set/SettingGpsPathActivity$1;
.super Ljava/lang/Object;
.source "SettingGpsPathActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/set/SettingGpsPathActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/set/SettingGpsPathActivity;


# direct methods
.method constructor <init>(Lcom/ts/set/SettingGpsPathActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/set/SettingGpsPathActivity$1;->this$0:Lcom/ts/set/SettingGpsPathActivity;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 184
    const/16 v0, 0x14

    invoke-static {v0}, Lcom/yyw/ts70xhw/Mcu;->SendXKey(I)I

    .line 185
    iget-object v0, p0, Lcom/ts/set/SettingGpsPathActivity$1;->this$0:Lcom/ts/set/SettingGpsPathActivity;

    invoke-virtual {v0}, Lcom/ts/set/SettingGpsPathActivity;->finish()V

    .line 187
    return-void
.end method
