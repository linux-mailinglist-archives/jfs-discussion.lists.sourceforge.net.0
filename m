Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 07425612305
	for <lists+jfs-discussion@lfdr.de>; Sat, 29 Oct 2022 14:48:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1oolGN-0007V1-8g;
	Sat, 29 Oct 2022 12:48:35 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1oolG6-0007UG-IO
 for jfs-discussion@lists.sourceforge.net;
 Sat, 29 Oct 2022 12:48:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HNZRQvJ17SI6CZ8q+B6eKT5nfyu7tN4BA1nyGluKsSk=; b=QInqU+sznYOFUue+54cYT0pFD/
 BRlt94FDG9mql/ws1O3wvWIPmWEq0jug+e29Y6SuG1tQNZvxT20RPZRdhCMVwit2ill+r6lYJpsBq
 AE7s0yPN2FdRTrASN47EqDuNsuI8d2rnQGbA6R5ilbSBgIO4Cd5JFflqCJCR9ruCWDHQ=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HNZRQvJ17SI6CZ8q+B6eKT5nfyu7tN4BA1nyGluKsSk=; b=eScnwJZwbmqSXBrSJpWvK74Sem
 h69R3kbkO0AP6sUg3UZDp1Yo6Gqo/4WcZnSuRGm3wdswjJTXpG3PEy84Ky7Z5dYnaoM5avhw/u3Ll
 CP904hp9Vu9R/C29OL26mX8KT/Y2DV+6i2TBHLde4SZQXc6v0ZAWoKJ5iLawYYUkV1rY=;
Received: from mx.treblig.org ([46.43.15.161])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1oolG3-0003ln-8N for jfs-discussion@lists.sourceforge.net;
 Sat, 29 Oct 2022 12:48:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID
 :Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=HNZRQvJ17SI6CZ8q+B6eKT5nfyu7tN4BA1nyGluKsSk=; b=at9ZpwUAFCJZPj42nan5X3L1Rr
 042sI+2l+PxQf0VrCZlM0HkgpHNuzOIJvdYPdIHkLNGWOQHyJJ09Ta3INYPj8OyWn5Iqd3j8glla6
 E6OE/8gEse6QrMXR6uFYbEuvrECEFVrZo3K2Wdnw7BPPQPHB1pJwbSrxJd/Lev3VS0cRYXKnRrRhw
 /6HD7aBuKNkGsmKo0/erYBEKM/63UXxtP8Md3sOf1QKcye7Cej/AmklzVG7TN8BbkGGAMXg/xCgUG
 Bbs+lrZVNaPtU0R2e2mU979lCAffZ5znwTZsJ0N2OC0tqhPatx4/cb824e7J2HToX8YrsbpULlKht
 m9Akmgog==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1oolFt-00BWbo-Fu; Sat, 29 Oct 2022 13:48:05 +0100
Date: Sat, 29 Oct 2022 13:48:05 +0100
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <Y10hBcMrAYPZzghw@gallifrey>
References: <20221022203913.264855-1-linux@treblig.org>
 <202210241021.6E9E1EF65@keescook> <Y1beLWto/J2W1Stu@gallifrey>
 <202210281526.B32C79C4@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202210281526.B32C79C4@keescook>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-12-amd64 (x86_64)
X-Uptime: 13:47:38 up 231 days, 23:13,  1 user,  load average: 0.00, 0.00, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  * Kees Cook (keescook@chromium.org) wrote: > On Mon, Oct 24, 
 2022 at 07:49:17PM +0100,
 Dr. David Alan Gilbert wrote: > > * Kees Cook (keescook@chromium.org)
 wrote: > > > On Sat, Oct 22, 2022 at 09:39: [...] 
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
X-Headers-End: 1oolG3-0003ln-8N
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
> On Mon, Oct 24, 2022 at 07:49:17PM +0100, Dr. David Alan Gilbert wrote:
> > * Kees Cook (keescook@chromium.org) wrote:
> > > On Sat, Oct 22, 2022 at 09:39:14PM +0100, linux@treblig.org wrote:
> > > > From: "Dr. David Alan Gilbert" <linux@treblig.org>
> > > > 
> > > > JFS has in jfs_incore.h:
> > > > 
> > > >       /* _inline may overflow into _inline_ea when needed */
> > > >       /* _inline_ea may overlay the last part of
> > > >        * file._xtroot if maxentry = XTROOTINITSLOT
> > > >        */
> > > >       union {
> > > >         struct {
> > > >           /* 128: inline symlink */
> > > >           unchar _inline[128];
> > > >           /* 128: inline extended attr */
> > > >           unchar _inline_ea[128];
> > > >         };
> > > >         unchar _inline_all[256];
> > > > 
> > > > and currently the symlink code copies into _inline;
> > > > if this is larger than 128 bytes it triggers a fortify warning of the
> > > > form:
> > > > 
> > > >   memcpy: detected field-spanning write (size 132) of single field
> > > >      "ip->i_link" at fs/jfs/namei.c:950 (size 18446744073709551615)
> > > 
> > > Which compiler are you using for this build?
> > 
> > I think that report was the same on gcc on Fedora 37 and whatever
> > syzkaller was running.
> > 
> > > This size report (SIZE_MAX)
> > > should be impossible to reach. But also, the size is just wrong --
> > > i_inline is 128 bytes, not SIZE_MAX. So, the detection is working
> > > (132 > 128), but the report is broken, and I can't see how...
> > 
> > Yeh, and led me down a blind alley for a while thinking something had
> > really managed to screwup the strlen somehow.
> 
> This looks like a GCC bug (going at least back to GCC 10.2)[1], but some
> extra care around the macro appears to make it go away, so the reporting
> variable doesn't get confused/re-evaluated:

Thanks for chasing that; are you also going to file a gcc bug?

Dave

> diff --git a/include/linux/fortify-string.h b/include/linux/fortify-string.h
> index 09a032f6ce6b..9e2d96993c30 100644
> --- a/include/linux/fortify-string.h
> +++ b/include/linux/fortify-string.h
> @@ -550,13 +550,18 @@ __FORTIFY_INLINE bool fortify_memcpy_chk(__kernel_size_t size,
>  
>  #define __fortify_memcpy_chk(p, q, size, p_size, q_size,		\
>  			     p_size_field, q_size_field, op) ({		\
> -	size_t __fortify_size = (size_t)(size);				\
> -	WARN_ONCE(fortify_memcpy_chk(__fortify_size, p_size, q_size,	\
> -				     p_size_field, q_size_field, #op),	\
> +	const size_t __fortify_size = (size_t)(size);			\
> +	const size_t __p_size = (p_size);				\
> +	const size_t __q_size = (q_size);				\
> +	const size_t __p_size_field = (p_size_field);			\
> +	const size_t __q_size_field = (q_size_field);			\
> +	WARN_ONCE(fortify_memcpy_chk(__fortify_size, __p_size,		\
> +				     __q_size, __p_size_field,		\
> +				     __q_size_field, #op),		\
>  		  #op ": detected field-spanning write (size %zu) of single %s (size %zu)\n", \
>  		  __fortify_size,					\
>  		  "field \"" #p "\" at " __FILE__ ":" __stringify(__LINE__), \
> -		  p_size_field);					\
> +		  __p_size_field);					\
>  	__underlying_##op(p, q, __fortify_size);			\
>  })
>  
> 
> 
> [1] https://syzkaller.appspot.com/bug?id=23d613df5259b977dac1696bec77f61a85890e3d
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
