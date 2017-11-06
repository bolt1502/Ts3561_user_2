.class Lcom/ts/MainUI/Evc$MyOhoneListener;
.super Landroid/telephony/PhoneStateListener;
.source "Evc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ts/MainUI/Evc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOhoneListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ts/MainUI/Evc;


# direct methods
.method constructor <init>(Lcom/ts/MainUI/Evc;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/ts/MainUI/Evc$MyOhoneListener;->this$0:Lcom/ts/MainUI/Evc;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 168
    # getter for: Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ts/MainUI/Evc;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "incomingNumber=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    # getter for: Lcom/ts/MainUI/Evc;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/ts/MainUI/Evc;->access$0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "state=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    packed-switch p1, :pswitch_data_0

    .line 188
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    .line 189
    return-void

    .line 174
    :pswitch_0
    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->BlueSpeaking(I)I

    .line 175
    iget-object v0, p0, Lcom/ts/MainUI/Evc$MyOhoneListener;->this$0:Lcom/ts/MainUI/Evc;

    iput v3, v0, Lcom/ts/MainUI/Evc;->PhoneState:I

    goto :goto_0

    .line 178
    :pswitch_1
    invoke-static {v3}, Lcom/yyw/ts70xhw/Iop;->BlueSpeaking(I)I

    .line 179
    iget-object v0, p0, Lcom/ts/MainUI/Evc$MyOhoneListener;->this$0:Lcom/ts/MainUI/Evc;

    const/4 v1, 0x2

    iput v1, v0, Lcom/ts/MainUI/Evc;->PhoneState:I

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-static {v4}, Lcom/yyw/ts70xhw/Iop;->BlueSpeaking(I)I

    .line 183
    iget-object v0, p0, Lcom/ts/MainUI/Evc$MyOhoneListener;->this$0:Lcom/ts/MainUI/Evc;

    iput v4, v0, Lcom/ts/MainUI/Evc;->PhoneState:I

    goto :goto_0

    .line 171
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
