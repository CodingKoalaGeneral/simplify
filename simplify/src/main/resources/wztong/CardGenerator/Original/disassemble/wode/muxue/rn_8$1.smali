.class Lwode/muxue/rn_8$1;
.super Ljava/lang/Object;
.source "rn_8.java"

# interfaces
.implements Lrn_34/rn_35/rn_36/rn_4206$rn_4297_r;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwode/muxue/rn_8;->rn_4659()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwode/muxue/rn_8;


# direct methods
.method constructor <init>(Lwode/muxue/rn_8;)V
    .locals 0

    #@0
    .line 152
    iput-object p1, p0, Lwode/muxue/rn_8$1;->this$0:Lwode/muxue/rn_8;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public dispatch(Landroid/view/MotionEvent;)Z
    .locals 1

    #@0
    .line 155
    iget-object v0, p0, Lwode/muxue/rn_8$1;->this$0:Lwode/muxue/rn_8;

    #@2
    # invokes: Lwode/muxue/rn_8;->rn_27(Landroid/view/MotionEvent;)Z
    invoke-static {v0, p1}, Lwode/muxue/rn_8;->access$000(Lwode/muxue/rn_8;Landroid/view/MotionEvent;)Z

    #@5
    move-result p1

    #@6
    return p1
.end method
