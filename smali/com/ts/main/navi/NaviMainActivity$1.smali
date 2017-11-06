.class Lcom/ts/main/navi/NaviMainActivity$1;
.super Ljava/lang/Object;
.source "NaviMainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/navi/NaviMainActivity;->ShowOneMessage(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/navi/NaviMainActivity;


# direct methods
.method constructor <init>(Lcom/ts/main/navi/NaviMainActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/navi/NaviMainActivity$1;->this$0:Lcom/ts/main/navi/NaviMainActivity;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/amapauto8"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ts/MainUI/TsFile;->deleteFile(Ljava/io/File;)V

    .line 73
    new-instance v0, Ljava/io/File;

    const-string v1, "/mnt/sdcard/amapauto8"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 74
    iget-object v0, p0, Lcom/ts/main/navi/NaviMainActivity$1;->this$0:Lcom/ts/main/navi/NaviMainActivity;

    invoke-virtual {v0}, Lcom/ts/main/navi/NaviMainActivity;->finish()V

    .line 76
    return-void
.end method
