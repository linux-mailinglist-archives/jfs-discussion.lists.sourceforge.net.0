Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B873C6AAE9
	for <lists+jfs-discussion@lfdr.de>; Tue, 18 Nov 2025 17:40:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:MIME-Version:References:In-Reply-To:
	Message-ID:Date:To:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=jEkBVLTBjvOYv+4hyMVUOFfWukk2ofVsrK4UWzPHvjU=; b=cFcR3PCmFuvDKXoTg36VyDIkmH
	4GOqpH/BeFyt38rESio3iRxgphkoJnOQcDi5ds0hYeWRTzFF1JLlh3EGWcTeOVVHaoOOyP9bdhwfV
	pUUSlDx8ISoV8I319vzvWCV4I+hDmAPCsCv0LuvI76aRZrUmi1jUvHVqTyV56QsV/TKA=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vLOk3-0000rb-N2;
	Tue, 18 Nov 2025 16:39:43 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jkoolstra@xs4all.nl>) id 1vLOk2-0000rV-GC
 for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Nov 2025 16:39:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:MIME-Version:References:
 In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=n6apG3lmkHSuUuG0ZOl3EabiA2yAP5M8vJKLwwhuUMc=; b=Pz8qFxKFBDXy5QpfmnbBrW+1N1
 Zfzh3CL/EoLe/GBLtJm7avFpnDnRCFQO2lahoF6hwAVVBqVi884taz0SnJruk55dw+WwH2iKQkyW1
 taLL/FlUGg7DqKPxn+VRHhX5XxrlFdI/XoFtxxUgfcn1P8kIkhpFPside060KcgtpdYo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:
 Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=n6apG3lmkHSuUuG0ZOl3EabiA2yAP5M8vJKLwwhuUMc=; b=kjWs/Y8jF4JSTbJ7SZXUmNvp/+
 M0x7wOIcuFovO8uoyUQQxgoD0ImdyQB789pmy3JCkJrdopZ8iWMwCGxHdLn9RF/Xt2w1b3hsj9QHN
 0KkzyYPi80Wm5wI27DEZieyt8ZiFHIw2pW4SbjrR1m1H3TqwIstTUGg2wuw6pcBTDZFo=;
Received: from ewsoutbound.kpnmail.nl ([195.121.94.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vLOk0-0005c0-KX for jfs-discussion@lists.sourceforge.net;
 Tue, 18 Nov 2025 16:39:42 +0000
X-KPN-MessageId: 3531c13c-c49d-11f0-84a0-005056abad63
Received: from smtp.kpnmail.nl (unknown [10.31.155.37])
 by ewsoutbound.so.kpn.org (Halon) with ESMTPS
 id 3531c13c-c49d-11f0-84a0-005056abad63;
 Tue, 18 Nov 2025 17:39:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=xs4all01;
 h=mime-version:message-id:date:subject:to:from;
 bh=n6apG3lmkHSuUuG0ZOl3EabiA2yAP5M8vJKLwwhuUMc=;
 b=EwKUtVJgH1jXu4+dAKim/EDxsEa96gw7tUK28U6foVN6s5zJmxlRNq5pouV33vpeM1ZlYBwlS9fny
 77e/12I+3b3hBJVwE8bkmX6Rl3LsKFUCQATLT7UQT+d+QnKM8lOhCNzJJ5aj3k5/OBtF27S6mxIYQs
 STK0H9PLkk29HPyrm1NkOr5Ah6IflCKCYtK/ejmGNIj+rJ9k3WyiV0cyu/bKPuxpktgSBeIuD44ULd
 tWVSocjb1Vfew5l0WGh+pBYb0J3CqYYKP/hW/5SluyexvL2+45x6p01r/zte/GT5JsQQ1zv3P7l6ij
 aNKa3DUm56dtH8T83TsWGbgKcu5kj4w==
X-KPN-MID: 33|g+Gd0clpTIob7INLhpnqeXr966zuPn6yfVu/2wHS780eUuHHqQlToL7XUlE8WHI
 Dclwm4usw/cJ+Bn8KRMvskw==
X-KPN-VerifiedSender: Yes
X-CMASSUN: 33|RVg6e6myhbxa47oQnV/5fLxXNa2xaWujlNtwUqvT3MtZd1ogwn17tAg3YE5j4G+
 rKV856CnYIWTh2wCVnF181g==
X-Originating-IP: 178.226.144.191
Received: from lt-jori.localdomain (unknown [178.226.144.191])
 by smtp.xs4all.nl (Halon) with ESMTPSA
 id 267ebfba-c49d-11f0-bda2-005056ab1411;
 Tue, 18 Nov 2025 17:39:28 +0100 (CET)
To: brauner@kernel.org, gabriel@krisman.be, jlayton@kernel.org,
 neil@brown.name, shaggy@kernel.org, viro@zeniv.linux.org.uk
Date: Tue, 18 Nov 2025 17:39:26 +0100
Message-ID: <20251118163926.65737-1-jkoolstra@xs4all.nl>
X-Mailer: git-send-email 2.51.2
In-Reply-To: <20251028122212.290745-1-jkoolstra@xs4all.nl>
References: <20251028122212.290745-1-jkoolstra@xs4all.nl>
MIME-Version: 1.0
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Below syzbot bug has not been fixed yet. If anyone has time
 I would greatly appreciate a review of my patch, so it can be moved along.
 It has been sitting for a few weeks. Thanks, Jori. Apologies for the resend,
 I messed up the email headers. 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-Headers-End: 1vLOk0-0005c0-KX
Subject: [Jfs-discussion] [PATCH] nlink overflow in jfs_rename
X-BeenThere: jfs-discussion@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <jfs-discussion.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=jfs-discussion>
List-Post: <mailto:jfs-discussion@lists.sourceforge.net>
List-Help: <mailto:jfs-discussion-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/jfs-discussion>, 
 <mailto:jfs-discussion-request@lists.sourceforge.net?subject=subscribe>
From: Jori Koolstra via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Jori Koolstra <jkoolstra@xs4all.nl>
Cc: jkoolstra@xs4all.nl, syzbot+9131ddfd7870623b719f@syzkaller.appspotmail.com,
 skhan@linuxfoundation.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

Below syzbot bug has not been fixed yet. If anyone has time I would
greatly appreciate a review of my patch, so it can be moved along.
It has been sitting for a few weeks.

Thanks,
Jori.

Apologies for the resend, I messed up the email headers.

> Op 28-10-2025 13:22 CET schreef Jori Koolstra <jkoolstra@xs4all.nl>:
>
>
> If nlink is maximal for a directory (-1) and inside that directory you
> perform a rename for some child directory (not moving from the parent),
> then the nlink of the first directory is first incremented and later
> decremented. Normally this is fine, but when nlink = -1 this causes a
> wrap around to 0, and then drop_nlink issues a warning.
> 
> After applying the patch syzbot no longer issues any warnings. I also
> ran some basic fs tests to look for any regressions.
> 
> Signed-off-by: Jori Koolstra <jkoolstra@xs4all.nl>
> Reported-by: syzbot+9131ddfd7870623b719f@syzkaller.appspotmail.com
> Closes: https://syzbot.org/bug?extid=9131ddfd7870623b719f


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
