.class Lrn_34/rn_35/rn_36/rn_4206$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "rn_4206.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrn_34/rn_35/rn_36/rn_4206;->rn_418(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrn_34/rn_35/rn_36/rn_4206;


# direct methods
.method constructor <init>(Lrn_34/rn_35/rn_36/rn_4206;)V
    .locals 0

    #@0
    .line 124
    iput-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206$2;->this$0:Lrn_34/rn_35/rn_36/rn_4206;

    #@2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    #@0
    .line 132
    iget-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206$2;->this$0:Lrn_34/rn_35/rn_36/rn_4206;

    #@2
    const/16 v0, 0x9

    #@4
    invoke-virtual {p1, v0}, Lrn_34/rn_35/rn_36/rn_4206;->rn_4299(I)V

    #@7
    .line 133
    const/4 p1, 0x1

    #@8
    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    #@0
    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    #@3
    move-result p3

    #@4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    #@7
    move-result p4

    #@8
    sub-float/2addr p3, p4

    #@9
    float-to-int p3, p3

    #@a
    .line 149
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    #@d
    move-result p1

    #@e
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    #@11
    move-result p2

    #@12
    sub-float/2addr p1, p2

    #@13
    float-to-int p1, p1

    #@14
    .line 151
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    #@17
    move-result p2

    #@18
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    #@1b
    move-result p4

    #@1c
    if-le p2, p4, :cond_1

    #@1e
    .line 152
    if-lez p3, :cond_0

    #@20
    const/4 p1, 0x4

    #@21
    goto :goto_0

    #@22
    :cond_0
    const/4 p1, 0x5

    #@23
    goto :goto_0

    #@24
    .line 154
    :cond_1
    if-lez p1, :cond_2

    #@26
    const/4 p1, 0x6

    #@27
    goto :goto_0

    #@28
    :cond_2
    const/4 p1, 0x7

    #@29
    .line 156
    :goto_0
    iget-object p2, p0, Lrn_34/rn_35/rn_36/rn_4206$2;->this$0:Lrn_34/rn_35/rn_36/rn_4206;

    #@2b
    invoke-virtual {p2, p1}, Lrn_34/rn_35/rn_36/rn_4206;->rn_4299(I)V

    #@2e
    .line 157
    const/4 p1, 0x1

    #@2f
    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    #@0
    .line 138
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    #@3
    move-result p1

    #@4
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    #@7
    move-result p2

    #@8
    const/4 v0, 0x1

    #@9
    const/4 v1, 0x0

    #@a
    cmpl-float p1, p1, p2

    #@c
    if-lez p1, :cond_1

    #@e
    .line 139
    cmpl-float p1, p3, v1

    #@10
    if-lez p1, :cond_0

    #@12
    const/4 p1, 0x0

    #@13
    goto :goto_0

    #@14
    :cond_0
    const/4 p1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 141
    :cond_1
    cmpl-float p1, p4, v1

    #@18
    if-lez p1, :cond_2

    #@1a
    const/4 p1, 0x2

    #@1b
    goto :goto_0

    #@1c
    :cond_2
    const/4 p1, 0x3

    #@1d
    .line 143
    :goto_0
    iget-object p2, p0, Lrn_34/rn_35/rn_36/rn_4206$2;->this$0:Lrn_34/rn_35/rn_36/rn_4206;

    #@1f
    invoke-virtual {p2, p1}, Lrn_34/rn_35/rn_36/rn_4206;->rn_4299(I)V

    #@22
    .line 144
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    #@0
    .line 127
    iget-object p1, p0, Lrn_34/rn_35/rn_36/rn_4206$2;->this$0:Lrn_34/rn_35/rn_36/rn_4206;

    #@2
    const/16 v0, 0x8

    #@4
    invoke-virtual {p1, v0}, Lrn_34/rn_35/rn_36/rn_4206;->rn_4299(I)V

    #@7
    .line 128
    const/4 p1, 0x1

    #@8
    return p1
.end method
