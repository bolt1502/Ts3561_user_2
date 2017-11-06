.class public interface abstract annotation Lcom/T/T/T/T3;
.super Ljava/lang/Object;
.source "Proguard"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/T/T/T/T3;
        T = ""
        T2 = true
        T3 = ""
        TN = true
        Te = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract T()Ljava/lang/String;
.end method

.method public abstract T2()Z
.end method

.method public abstract T3()Ljava/lang/String;
.end method

.method public abstract TN()Z
.end method

.method public abstract Te()[Lcom/T/T/T2/T3c;
.end method
