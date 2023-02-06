Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2073368C711
	for <lists+jfs-discussion@lfdr.de>; Mon,  6 Feb 2023 20:51:24 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pP7W3-0008LS-3t;
	Mon, 06 Feb 2023 19:51:02 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1pP7W2-0008L9-6S
 for jfs-discussion@lists.sourceforge.net;
 Mon, 06 Feb 2023 19:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jS8Lr/pwA5OrRN4brjkNs2jw0MJnveqWb1qydiq7450=; b=JYTMx4oA4+7SInPylLlSsbmnXg
 D/Yba3HO/GSh+/S3omSByiiisUOxiuLnTDDtPz6l4MznEy5lqhLLOP2bJE6KaeBy+2kI5uzvfNsOw
 gaCWFBXS5AH6i67U0Xq/z1KkzoQAXrECT5uq9AkUnVrfPqejoYMkd/08n8gJv6FNqjSA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jS8Lr/pwA5OrRN4brjkNs2jw0MJnveqWb1qydiq7450=; b=Lv7OxB1L48OKn0pOgXsgywoCPT
 E0lGUsgw6Vk4wdqPnFp9PcJjCC00NhLKm9hwBsnRIVsR2+9hKgeUZycXHb4YpLiq4/das/Gvdj3g/
 7vNDT/ukf0QxaPa3Ej6szt/1W/YRAv8fJ/jTM4cnibUyrzSqioNiZDSpWJR1ohoKqHWg=;
Received: from mx.treblig.org ([46.43.15.161])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pP7Vx-0001Vc-FA for jfs-discussion@lists.sourceforge.net;
 Mon, 06 Feb 2023 19:51:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID
 :Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=jS8Lr/pwA5OrRN4brjkNs2jw0MJnveqWb1qydiq7450=; b=PzcVPmntEcaP6qZgyrdEZDCu1o
 BesahfN7b/ewF+hA/2B1ezrn+0NTYW7pfNYbLpBxCW/0Er+37lr5bd+5+g/88KxDqsW9aMqls3eMp
 1peItIsu5okHg3iFOQqp91YyZ7dZhUZm8jSoqMmW3yqFGEa1ikQ6CYnxl+0Prk0pjA+PUBQomT9xb
 4SA2JMEoek3+9ajzTDbqxpWj37qvrxhOXqhkKDNjHNI4GKMau5mGLg1x83ckJcCBbwN7UVwaWG+Kp
 KHlE3lBqjfexOCOhZp+w3CNB/K+h2JY0gxlq427EoOaH1KPqt1tsf5oVCnN5EV9r7SNfuGKnWBwWL
 K3fEGq9A==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1pP7Vi-00530d-MK; Mon, 06 Feb 2023 19:50:42 +0000
Date: Mon, 6 Feb 2023 19:50:42 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <Y+FaEp2blurmgVlH@gallifrey>
References: <20230204183355.never.877-kees@kernel.org>
 <Y96/SUlPUl7xH1NO@gallifrey>
 <63e1486a.050a0220.7001.ca15@mx.google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <63e1486a.050a0220.7001.ca15@mx.google.com>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-12-amd64 (x86_64)
X-Uptime: 19:49:48 up 332 days,  6:15,  1 user,  load average: 0.05, 0.04, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  * Kees Cook (keescook@chromium.org) wrote: > On Sat, Feb 04, 
 2023 at 08:25:45PM +0000,
 Dr. David Alan Gilbert wrote: > > * Kees Cook (keescook@chromium.org)
 wrote: > > > To avoid confusing the compile [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-Headers-End: 1pP7Vx-0001Vc-FA
Subject: Re: [Jfs-discussion] [PATCH] jfs: Use unsigned variable for length
 calculations
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
Cc: Dave Kleikamp <shaggy@kernel.org>, Christian Brauner <brauner@kernel.org>,
 jfs-discussion@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 linux-hardening@vger.kernel.org, Dave Chinner <dchinner@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

* Kees Cook (keescook@chromium.org) wrote:
> On Sat, Feb 04, 2023 at 08:25:45PM +0000, Dr. David Alan Gilbert wrote:
> > * Kees Cook (keescook@chromium.org) wrote:
> > > To avoid confusing the compiler about possible negative sizes, switch
> > > "ssize" which can never be negative from int to u32.  Seen with GCC 13:
> > > 
> > > ../fs/jfs/namei.c: In function 'jfs_symlink': ../include/linux/fortify-string.h:57:33: warning: '__builtin_memcpy' pointer overflow between offset 0 and size [-2147483648, -1]
> > > [-Warray-bounds=]
> > >    57 | #define __underlying_memcpy     __builtin_memcpy
> > >       |                                 ^
> > > ...
> > > ../fs/jfs/namei.c:950:17: note: in expansion of macro 'memcpy'
> > >   950 |                 memcpy(ip->i_link, name, ssize);
> > >       |                 ^~~~~~
> > > 
> > > Cc: Dave Kleikamp <shaggy@kernel.org>
> > > Cc: Christian Brauner <brauner@kernel.org>
> > > Cc: Dave Chinner <dchinner@redhat.com>
> > > Cc: jfs-discussion@lists.sourceforge.net
> > > Signed-off-by: Kees Cook <keescook@chromium.org>
> > > ---
> > >  fs/jfs/namei.c | 6 +++---
> > >  1 file changed, 3 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
> > > index b29d68b5eec5..494b9f4043cf 100644
> > > --- a/fs/jfs/namei.c
> > > +++ b/fs/jfs/namei.c
> > > @@ -876,7 +876,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
> > >  	tid_t tid;
> > >  	ino_t ino = 0;
> > >  	struct component_name dname;
> > > -	int ssize;		/* source pathname size */
> > > +	u32 ssize;		/* source pathname size */
> > 
> > Had you considered using size_t - this is set from a strlen and used by a memcpy
> > that both talk size_t.
> 
> I considered that, but I've had other maintainers upset about doubling
> the variable size.

I bet at least on some platforms it's cheaper as the 64 bit.

> I opted to keep the variable 32-bit here, so the
> machine code would only change to lose signed-ness.

Fair enough.

Dave

> -Kees
> 
> -- 
> Kees Cook
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
