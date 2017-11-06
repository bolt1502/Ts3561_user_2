.class Lcom/ts/main/common/MainVolume$2;
.super Ljava/lang/Object;
.source "MainVolume.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ts/main/common/MainVolume;->InintVolBarState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/main/common/MainVolume;


# direct methods
.method constructor <init>(Lcom/ts/main/common/MainVolume;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/ts/main/common/MainVolume$2;->this$0:Lcom/ts/main/common/MainVolume;

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .param p1, "seekbar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "frpmTouch"    # Z

    .prologue
    .line 333
    iget-object v0, p0, Lcom/ts/main/common/MainVolume$2;->this$0:Lcom/ts/main/common/MainVolume;

    # getter for: Lcom/ts/main/common/MainVolume;->mEvc:Lcom/ts/MainUI/Evc;
    invoke-static {v0}, Lcom/ts/main/common/MainVolume;->access$0(Lcom/ts/main/common/MainVolume;)Lcom/ts/MainUI/Evc;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ts/MainUI/Evc;->evol_navivol_set(I)V

    .line 335
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 327
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "arg0"    # Landroid/widget/SeekBar;

    .prologue
    .line 320
    return-void
.end method
