Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B8CB68AC6E
	for <lists+jfs-discussion@lfdr.de>; Sat,  4 Feb 2023 22:05:08 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1pOPiK-0007p4-54;
	Sat, 04 Feb 2023 21:04:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <dg@treblig.org>) id 1pOPiI-0007oy-B5
 for jfs-discussion@lists.sourceforge.net;
 Sat, 04 Feb 2023 21:04:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1oAfu/SOsAux7HPahvBnZKGF5xOl4eordA1YvytBOis=; b=fuPZeXbQNZwwsNl6WiXK91OOPL
 5PHlhJ9RQHCsODqCwQk5FS0I7r3uSK+72qdZTpLiZ5Gjev3xWv9MKvoN29TQ4RNVy2AbXkGihWmQY
 k8Emy/OPMAYKrA1FYHSPEj+b+VpWryv6l7dgnc/1y789ZtKAPwtyAh1TjwOMas7x8jw8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1oAfu/SOsAux7HPahvBnZKGF5xOl4eordA1YvytBOis=; b=PqGBvN2P9WazqpGb8yehAIxb5t
 fz7wPbY+j+F8TvVD9wioCPKVK/VmaI0GL0GzSmLXgQhkCSQPwByAHX+WNGtKT/zcrrGxdOJfBHNlV
 nrC8EFvhiqxXa/2imNDtz4MQ+4BmL+/y/plTOi/KoInsVnIvIx/JpzWbHsoKMKZIWLrQ=;
Received: from mx.treblig.org ([46.43.15.161])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1pOPiE-00BNcW-OW for jfs-discussion@lists.sourceforge.net;
 Sat, 04 Feb 2023 21:04:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=treblig.org
 ; s=bytemarkmx;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID
 :Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID
 :Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:
 Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe
 :List-Post:List-Owner:List-Archive;
 bh=1oAfu/SOsAux7HPahvBnZKGF5xOl4eordA1YvytBOis=; b=EDjVFs1o/tyF4WjFmK6FY1touD
 SFV1NgXcpkuah8uH3HIkqCSqBBSEZAb+cqYrpcHCiPFxh0/vCsSv5NiT45P44c4h0ZyEJxL0w2hyK
 gnWi9TgVoBHgSPeyO/ux2VzXxiQUSMzezY7igUeqRG8aRlDLIk4LKycQAy9xuCdccOddlimc4Xyxo
 qk8aGr5Y/Q+qCuBL4x5BUam2f3CFreLxyHN57uXZ6d5SlDsA8HapnQANzRtTmKh1wHW81M5TYoFXN
 bUKDEkBwdXBFbe4GjN3nD/q0sx9va/h2qlipR9XqTsD9AuQ0NwBb43uU94VxXGp3W2cJxzrOMsS0/
 K6NexaNQ==;
Received: from dg by mx.treblig.org with local (Exim 4.94.2)
 (envelope-from <dg@treblig.org>)
 id 1pOP6X-003ROY-Tx; Sat, 04 Feb 2023 20:25:45 +0000
Date: Sat, 4 Feb 2023 20:25:45 +0000
From: "Dr. David Alan Gilbert" <linux@treblig.org>
To: Kees Cook <keescook@chromium.org>
Message-ID: <Y96/SUlPUl7xH1NO@gallifrey>
References: <20230204183355.never.877-kees@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230204183355.never.877-kees@kernel.org>
X-Chocolate: 70 percent or better cocoa solids preferably
X-Operating-System: Linux/5.10.0-12-amd64 (x86_64)
X-Uptime: 20:25:10 up 330 days,  6:50,  1 user,  load average: 0.00, 0.00, 0.00
User-Agent: Mutt/2.0.5 (2021-01-21)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: * Kees Cook (keescook@chromium.org) wrote: > To avoid
 confusing
 the compiler about possible negative sizes, switch > "ssize" which can never
 be negative from int to u32. Seen with GCC 13: > > ../fs/jf [...] 
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
X-Headers-End: 1pOPiE-00BNcW-OW
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
> To avoid confusing the compiler about possible negative sizes, switch
> "ssize" which can never be negative from int to u32.  Seen with GCC 13:
> 
> ../fs/jfs/namei.c: In function 'jfs_symlink': ../include/linux/fortify-string.h:57:33: warning: '__builtin_memcpy' pointer overflow between offset 0 and size [-2147483648, -1]
> [-Warray-bounds=]
>    57 | #define __underlying_memcpy     __builtin_memcpy
>       |                                 ^
> ...
> ../fs/jfs/namei.c:950:17: note: in expansion of macro 'memcpy'
>   950 |                 memcpy(ip->i_link, name, ssize);
>       |                 ^~~~~~
> 
> Cc: Dave Kleikamp <shaggy@kernel.org>
> Cc: Christian Brauner <brauner@kernel.org>
> Cc: Dave Chinner <dchinner@redhat.com>
> Cc: jfs-discussion@lists.sourceforge.net
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  fs/jfs/namei.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/fs/jfs/namei.c b/fs/jfs/namei.c
> index b29d68b5eec5..494b9f4043cf 100644
> --- a/fs/jfs/namei.c
> +++ b/fs/jfs/namei.c
> @@ -876,7 +876,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
>  	tid_t tid;
>  	ino_t ino = 0;
>  	struct component_name dname;
> -	int ssize;		/* source pathname size */
> +	u32 ssize;		/* source pathname size */

Had you considered using size_t - this is set from a strlen and used by a memcpy
that both talk size_t.

Dave

>  	struct btstack btstack;
>  	struct inode *ip = d_inode(dentry);
>  	s64 xlen = 0;
> @@ -957,7 +957,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
>  		if (ssize > sizeof (JFS_IP(ip)->i_inline))
>  			JFS_IP(ip)->mode2 &= ~INLINEEA;
>  
> -		jfs_info("jfs_symlink: fast symlink added  ssize:%d name:%s ",
> +		jfs_info("jfs_symlink: fast symlink added  ssize:%u name:%s ",
>  			 ssize, name);
>  	}
>  	/*
> @@ -987,7 +987,7 @@ static int jfs_symlink(struct mnt_idmap *idmap, struct inode *dip,
>  		ip->i_size = ssize - 1;
>  		while (ssize) {
>  			/* This is kind of silly since PATH_MAX == 4K */
> -			int copy_size = min(ssize, PSIZE);
> +			u32 copy_size = min_t(u32, ssize, PSIZE);
>  
>  			mp = get_metapage(ip, xaddr, PSIZE, 1);
>  
> -- 
> 2.34.1
> 
-- 
 -----Open up your eyes, open up your mind, open up your code -------   
/ Dr. David Alan Gilbert    |       Running GNU/Linux       | Happy  \ 
\        dave @ treblig.org |                               | In Hex /
 \ _________________________|_____ http://www.treblig.org   |_______/


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
