Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3150660B62B
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Oct 2022 20:49:53 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1on2Vx-0002J0-P5;
	Mon, 24 Oct 2022 18:49:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1on2Vv-0002It-5g
 for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Oct 2022 18:49:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RF5v6sbc/BgP4DAy64XP5vEHKb5eLyVOJZSiY2mcVFQ=; b=XLDbL1eXLFdbJhNCUQcIjCQNWo
 opVtsb6mDUFjbHwbUQkQAJSVazrUGpysirAsacVo2yjIt+1PDz/+lqyBwAMEjt8+K2b7PiDfyyhee
 0snBfL4ym41UVdFBMNjj4sEJ/8OIVO755QZlTQn5XdhLYrBjSUwnahV+bpuWVlpnFWn0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RF5v6sbc/BgP4DAy64XP5vEHKb5eLyVOJZSiY2mcVFQ=; b=eOmirype31Xc3bQedc961lK7DB
 qMA73ekPWWwg7cP6pR7ZzgyWaiD0cMl1BKilFNv75VHndM2bLxD+q//KT3PNvceMmbbTLHW7HMMT/
 vm+jEG2AUNi1uXHdqBgjhfrc0ktCKhaPTAzXVzS9/ISd0WVHj4PsP+Oo6HZSv50dzP7g=;
Received: from mx.treblig.org ([46.43.15.161])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1on2Vs-0005Pn-Ct for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Oct 2022 18:49:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID
 :Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=RF5v6sbc/BgP4DAy64XP5vEHKb5eLyVOJZSiY2mcVFQ=; b=q2vKX0iVl6xstCbWD8tFqDVTaY
 7Wu08EpPd0dhYq2LDGPkm3Xxk3hfzOBoQjY8XJYq4waPjgz/NzlVGrrIl+oieZUgrlNUU/KhfYnDq
 Ggk46jc5GbAaOIRpagZZ4I29/kRcjn8uVBYbqX89CSh+v46QCDKASN8gsAe4bZ4dFKEoSnavM358x
 IKAkS7OlzbkEYoi0IqBujvSbMKbGsFTNejtNJxC4anlU1etzLVOt9kfgF67X8Dml0kk4VwyCrIhG4
 dh7bv/HeYouaQpsvL72fs9T/RmFQldMPSWiKo72eGoTsGPMAiBlKoTMJ124iA7ne72cELr9ImhPvQ
 6vXgVjAA==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1on2Vh-007RkM-Tl; Mon, 24 Oct 2022 19:49:17 +0100
Date: Mon, 24 Oct 2022 19:49:17 +0100
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <Y1beLWto/J2W1Stu@gallifrey>
References: <20221022203913.264855-1-linux@treblig.org>
 <202210241021.6E9E1EF65@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202210241021.6E9E1EF65@keescook>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-12-amd64 (x86_64)
X-Uptime: 19:47:20 up 227 days,  5:13,  1 user,  load average: 0.07, 0.04, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  * Kees Cook (keescook@chromium.org) wrote: > On Sat, Oct 22, 
 2022 at 09:39:14PM +0100, linux@treblig.org wrote: > > From: "Dr. David Alan
 Gilbert" <linux@treblig.org> > > > > JFS has in jfs_incore.h: [...] 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1on2Vs-0005Pn-Ct
Subject: Re: [Jfs-discussion] [PATCH] jfs: Fix fortify moan in symlink
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org,
 syzbot+5fc38b2ddbbca7f5c680@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

* Kees Cook (keescook@chromium.org) wrote:
> On Sat, Oct 22, 2022 at 09:39:14PM +0100, linux@treblig.org wrote:
> > From: "Dr. David Alan Gilbert" <linux@treblig.org>
> > 
> > JFS has in jfs_incore.h:
> > 
> >       /* _inline may overflow into _inline_ea when needed */
> >       /* _inline_ea may overlay the last part of
> >        * file._xtroot if maxentry = XTROOTINITSLOT
> >        */
> >       union {
> >         struct {
> >           /* 128: inline symlink */
> >           unchar _inline[128];
> >           /* 128: inline extended attr */
> >           unchar _inline_ea[128];
> >         };
> >         unchar _inline_all[256];
> > 
> > and currently the symlink code copies into _inline;
> > if this is larger than 128 bytes it triggers a fortify warning of the
> > form:
> > 
> >   memcpy: detected field-spanning write (size 132) of single field
> >      "ip->i_link" at fs/jfs/namei.c:950 (size 18446744073709551615)
> 
> Which compiler are you using for this build?

I think that report was the same on gcc on Fedora 37 and whatever
syzkaller was running.

> This size report (SIZE_MAX)
> should be impossible to reach. But also, the size is just wrong --
> i_inline is 128 bytes, not SIZE_MAX. So, the detection is working
> (132 > 128), but the report is broken, and I can't see how...

Yeh, and led me down a blind alley for a while thinking something had
really managed to screwup the strlen somehow.

> 
> > 
> > when it's actually OK.
> > 
> > Copy it into _inline_all instead.
> > 
> > Reported-by: syzbot+5fc38b2ddbbca7f5c680@syzkaller.appspotmail.com
> > Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
> > ---
> >  fs/jfs/namei.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
> > index 9db4f5789c0ec..4fbbf88435e69 100644
> > --- a/fs/jfs/namei.c
> > +++ b/fs/jfs/namei.c
> > @@ -946,7 +946,7 @@ static int jfs_symlink(struct user_namespace *mnt_userns, struct inode *dip,
> >  	if (ssize <= IDATASIZE) {
> >  		ip->i_op = &jfs_fast_symlink_inode_operations;
> >  
> > -		ip->i_link = JFS_IP(ip)->i_inline;
> > +		ip->i_link = JFS_IP(ip)->i_inline_all;
> >  		memcpy(ip->i_link, name, ssize);
> >  		ip->i_size = ssize - 1;
> >  
> 
> Regardless, the fix looks correct to me!
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>

Thanks!

Dave

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
