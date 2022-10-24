Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A2760B449
	for <lists+jfs-discussion@lfdr.de>; Mon, 24 Oct 2022 19:35:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1on1Lw-0006cp-7c;
	Mon, 24 Oct 2022 17:35:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <keescook@chromium.org>) id 1on1Lm-0006cj-J0
 for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Oct 2022 17:34:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i2byGtEXgZJqwC1xhUiJg77blmnFurI60zGNAGyGmaU=; b=Jf1zBwU8tEFhmp9s+vU4Kj0AxF
 yWBXfEKnEsKxVGWXqZCgAp702XKITZ3BavGnUYVuR2KhFkCSXbv02ARkj8LJjxR8ng6PZ1cAtf53j
 gp7OZmFSpRB8jpQw8wAFWvCfZc3E5nYHwtcZJT54bxbD0mLm5/NRMlGdbWxcB5ylMTrg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=i2byGtEXgZJqwC1xhUiJg77blmnFurI60zGNAGyGmaU=; b=jcW72YxWlQDlYviF+7ErclS9pG
 y35iNg5AVXFXvEad4rSQyPkXgHSjnHUUZc7fG9Y4Q0MLHUrEZuqky0FcEqgIB62fePufiRzDzHVeU
 o1so1gYwJTmmAeDr0m5RSZaCtyX0jjS9Q6oHHQvE9RwrdAWmR1bx7SntSIna/3nsZSFQ=;
Received: from mail-oi1-f179.google.com ([209.85.167.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1on1Ll-00Fwxz-G6 for jfs-discussion@lists.sourceforge.net;
 Mon, 24 Oct 2022 17:34:58 +0000
Received: by mail-oi1-f179.google.com with SMTP id y72so11590073oia.3
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 24 Oct 2022 10:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=i2byGtEXgZJqwC1xhUiJg77blmnFurI60zGNAGyGmaU=;
 b=TmzigJCgTBapdK0xkoXEz8vHuz4MX1KCMk1WsbpTta1fdAJMYtolT8c+MbBUUY66gh
 HhR4QOE6ff5VSgCKNs68HnkcILYqkh0alXR+pdd6xa59lIxg92vARF6jPTAKv45aSoX7
 UYpW407tNV89sAg+DBOdyGkt/wLS8h68jzqIQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=i2byGtEXgZJqwC1xhUiJg77blmnFurI60zGNAGyGmaU=;
 b=ay6tYwyvuKGiEgKtp9wbjDxxd0b0plZc9bwuOyiqBgM8KrgOHvUE704dWOZCZs2v/t
 30u6eYQfoUunY/VQ6NLpdXnVO8Hyp8WXi/StkJ7j5Xb9fxXowfhn2vqhxzkzmJa+SimQ
 oQiD5OoU96AOsiD0K/WeXgtItqfmywxU7n0ldugeCdyKKOwchwPu1s0fY8hYE8JEbI8P
 wEX2dDyVor+wmMKRYJ063U5UY22eZ7cWeeDHC2zod4edEuE4lG8e99AHN6ukBJneDfvQ
 xRg2+NFxsHJS+iiDvXwBAflV4Zb2Z9UmIL1SNF9V1nSZ5JkvifJJEMpSsS/M/2Sr8HKB
 BM6g==
X-Gm-Message-State: ACrzQf2hhE9DBL+4NtjcxSd0rmzOiF27ZPqi+UOGOQo/++WAZ4bffAGP
 CSvejGilUUAyLwhZ8/90inLJNxKNaq852A==
X-Google-Smtp-Source: AMsMyM5jpYkGLl4OBfSCMdyvabVZ9M6UzPL366jLswkI52JXS24uvkzZDH1iQ/9WXBipLDQHLijhfg==
X-Received: by 2002:a17:90b:1e49:b0:20b:36a3:aba6 with SMTP id
 pi9-20020a17090b1e4900b0020b36a3aba6mr77169003pjb.2.1666632509281; 
 Mon, 24 Oct 2022 10:28:29 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id
 d8-20020a170902654800b001788ccecbf5sm30958pln.31.2022.10.24.10.28.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 24 Oct 2022 10:28:28 -0700 (PDT)
Date: Mon, 24 Oct 2022 10:28:27 -0700
From: Kees Cook <keescook@chromium.org>
To: linux@treblig.org
Message-ID: <202210241021.6E9E1EF65@keescook>
References: <20221022203913.264855-1-linux@treblig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221022203913.264855-1-linux@treblig.org>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Sat, Oct 22, 2022 at 09:39:14PM +0100, linux@treblig.org
 wrote: > From: "Dr. David Alan Gilbert" <linux@treblig.org> > > JFS has in
 jfs_incore.h: > > /* _inline may overflow into _inline_ea when ne [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.179 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1on1Ll-00Fwxz-G6
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

On Sat, Oct 22, 2022 at 09:39:14PM +0100, linux@treblig.org wrote:
> From: "Dr. David Alan Gilbert" <linux@treblig.org>
> 
> JFS has in jfs_incore.h:
> 
>       /* _inline may overflow into _inline_ea when needed */
>       /* _inline_ea may overlay the last part of
>        * file._xtroot if maxentry = XTROOTINITSLOT
>        */
>       union {
>         struct {
>           /* 128: inline symlink */
>           unchar _inline[128];
>           /* 128: inline extended attr */
>           unchar _inline_ea[128];
>         };
>         unchar _inline_all[256];
> 
> and currently the symlink code copies into _inline;
> if this is larger than 128 bytes it triggers a fortify warning of the
> form:
> 
>   memcpy: detected field-spanning write (size 132) of single field
>      "ip->i_link" at fs/jfs/namei.c:950 (size 18446744073709551615)

Which compiler are you using for this build? This size report (SIZE_MAX)
should be impossible to reach. But also, the size is just wrong --
i_inline is 128 bytes, not SIZE_MAX. So, the detection is working
(132 > 128), but the report is broken, and I can't see how...

> 
> when it's actually OK.
> 
> Copy it into _inline_all instead.
> 
> Reported-by: syzbot+5fc38b2ddbbca7f5c680@syzkaller.appspotmail.com
> Signed-off-by: Dr. David Alan Gilbert <linux@treblig.org>
> ---
>  fs/jfs/namei.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
> index 9db4f5789c0ec..4fbbf88435e69 100644
> --- a/fs/jfs/namei.c
> +++ b/fs/jfs/namei.c
> @@ -946,7 +946,7 @@ static int jfs_symlink(struct user_namespace *mnt_userns, struct inode *dip,
>  	if (ssize <= IDATASIZE) {
>  		ip->i_op = &jfs_fast_symlink_inode_operations;
>  
> -		ip->i_link = JFS_IP(ip)->i_inline;
> +		ip->i_link = JFS_IP(ip)->i_inline_all;
>  		memcpy(ip->i_link, name, ssize);
>  		ip->i_size = ssize - 1;
>  

Regardless, the fix looks correct to me!

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
