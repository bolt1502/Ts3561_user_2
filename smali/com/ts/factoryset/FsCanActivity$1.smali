.class Lcom/ts/factoryset/FsCanActivity$1;
.super Ljava/lang/Object;
.source "FsCanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/factoryset/FsCanActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/factoryset/FsCanActivity;


# direct methods
.method constructor <init>(Lcom/ts/factoryset/FsCanActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/factoryset/FsCanActivity$1;->this$0:Lcom/ts/factoryset/FsCanActivity;

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    move-object v0, p1

    check-cast v0, Lcom/ts/other/ParamButton;

    .line 157
    .local v0, "curBtn":Lcom/ts/other/ParamButton;
    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam()I

    move-result v1

    .line 158
    .local v1, "id":I
    iget-object v2, p0, Lcom/ts/factoryset/FsCanActivity$1;->this$0:Lcom/ts/factoryset/FsCanActivity;

    invoke-virtual {v0}, Lcom/ts/other/ParamButton;->getIntParam2()I

    move-result v3

    invoke-static {v3}, Lcom/ts/other/ValCal;->int2Bool(I)Z

    move-result v3

    # invokes: Lcom/ts/factoryset/FsCanActivity;->doorAdjust(IZ)V
    invoke-static {v2, v1, v3}, Lcom/ts/factoryset/FsCanActivity;->access$0(Lcom/ts/factoryset/FsCanActivity;IZ)V

    .line 160
    return-void
.end method
