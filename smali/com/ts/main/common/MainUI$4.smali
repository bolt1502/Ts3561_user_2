.class Lcom/ts/main/common/MainUI$4;
.super Ljava/lang/Thread;
.source "MainUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/common/MainUI;->DealKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/common/MainUI;


# direct methods
.method constructor <init>(Lcom/ts/main/common/MainUI;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/common/MainUI$4;->this$0:Lcom/ts/main/common/MainUI;

    .line 1697
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 1700
    invoke-static {}, Lcom/yyw/ts70xhw/Iop;->DiscEject()I

    .line 1701
    return-void
.end method
