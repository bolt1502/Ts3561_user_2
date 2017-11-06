.class Lcom/ts/MainUI/Cmmb$StBtnControlXh;
.super Lcom/ts/MainUI/Cmmb;
.source "Cmmb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/Cmmb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StBtnControlXh"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/Cmmb;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/Cmmb;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/ts/MainUI/Cmmb$StBtnControlXh;->this$0:Lcom/ts/MainUI/Cmmb;

    invoke-direct {p0}, Lcom/ts/MainUI/Cmmb;-><init>()V

    return-void
.end method


# virtual methods
.method public CmmbLanguage()V
    .locals 4

    .prologue
    .line 141
    const/16 v0, 0x97

    const/16 v1, 0x7b

    const/16 v2, 0xe8

    const/16 v3, 0x17

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$StBtnControlXh;->SendIrCode(IIII)V

    .line 142
    return-void
.end method

.method public CmmbSearch()V
    .locals 4

    .prologue
    .line 138
    const/16 v0, 0x97

    const/16 v1, 0x7b

    const/16 v2, 0xf2

    const/16 v3, 0xd

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$StBtnControlXh;->SendIrCode(IIII)V

    .line 139
    return-void
.end method

.method public PlayNext()V
    .locals 4

    .prologue
    .line 132
    const/16 v0, 0x97

    const/16 v1, 0x7b

    const/16 v2, 0xb2

    const/16 v3, 0x4d

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$StBtnControlXh;->SendIrCode(IIII)V

    .line 133
    return-void
.end method

.method public PlayPrev()V
    .locals 4

    .prologue
    .line 135
    const/16 v0, 0x97

    const/16 v1, 0x7b

    const/16 v2, 0xb3

    const/16 v3, 0x4c

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/ts/MainUI/Cmmb$StBtnControlXh;->SendIrCode(IIII)V

    .line 136
    return-void
.end method
