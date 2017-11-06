.class Lcom/ts/MainUI/Evc$1;
.super Ljava/lang/Object;
.source "Evc.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/MainUI/Evc;->evol_workmode_set(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/Evc;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/Evc;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/MainUI/Evc$1;->this$0:Lcom/ts/MainUI/Evc;

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 3
    .param p1, "arg0"    # I

    .prologue
    .line 297
    # getter for: Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ts/MainUI/Evc;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "abandonAudioFocus=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    return-void
.end method
