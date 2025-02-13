Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id F03C8A33C10
	for <lists+jfs-discussion@lfdr.de>; Thu, 13 Feb 2025 11:07:55 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1tiW7x-0005TI-Ai;
	Thu, 13 Feb 2025 10:07:25 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <gregkh@linuxfoundation.org>) id 1tiW7v-0005TA-D3
 for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Feb 2025 10:07:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YYW+mI7XYQKYr8WQqwKr2og8IISQ356iy/XdwRmlVPA=; b=cKhjlLQwsS7yrhTcve7tl3zHWd
 66ONB3iIAFV9BA3lsj1UoB/c/OJSUr6XGzUc3g24PGmHcYPsX5evpIBlM4hcRNKo1Z8Ao1N3iqq60
 bO3bL2YKmYGwjwPWGhHWvyZd7/9uQyxlwcMzrzhHx8eA54oQgLUGls6FBvuBySMv6g6Y=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YYW+mI7XYQKYr8WQqwKr2og8IISQ356iy/XdwRmlVPA=; b=mistpizpSwwdyvRGvBQhj2Lqjk
 utG1REyL25+gSYkDE+MjT6kXBenQjQR685V/jqiCTCXUNbz4fbkEtbjv1HISjLQ/CyXm6KXqJ+bib
 bc4CjmM7nAxdRQavDpfeE7XsJV88W9KQLlqU7E77aB8pWnSKVu8nzvHKdN4IApLqUQd0=;
Received: from nyc.source.kernel.org ([147.75.193.91])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1tiW7u-0002Lt-7D for jfs-discussion@lists.sourceforge.net;
 Thu, 13 Feb 2025 10:07:23 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
 by nyc.source.kernel.org (Postfix) with ESMTP id 2502AA41FB9;
 Thu, 13 Feb 2025 10:05:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 81F90C4CEEA;
 Thu, 13 Feb 2025 10:07:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
 s=korg; t=1739441236;
 bh=hJ9vdlxQw43cL82gXunrPTAdfKQOg7xLn07nbZOeXlI=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uuZzmhXp/LalC4RoqX2qX1zGfxEvGB64CqlEFSWiNrLZMaUoIyqNCQoIWrV/E/smA
 YTIU37xNA7XKmufSdgH7sD2e9UphxoyOz6Co/OyIEBe3gD9Hm542ucWu0/FLlHMVec
 PjQJvCCxqOz0ekRxKwfZPWAh+f+8bSqNKtMJbrUg=
Date: Thu, 13 Feb 2025 11:07:07 +0100
To: Qasim Ijaz <qasdev00@gmail.com>
Message-ID: <2025021350-geometry-appear-9d84@gregkh>
References: <20250213002025.6602-1-qasdev00@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250213002025.6602-1-qasdev00@gmail.com>
X-Spam-Score: -4.0 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Feb 13, 2025 at 12:20:25AM +0000, Qasim Ijaz wrote:
 > During the "size_check" label in ea_get(), the code checks if the extended
 > attribute list (xattr) size matches ea_size. If not, it logs [...] 
 Content analysis details:   (-4.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [147.75.193.91 listed in bl.score.senderscore.com]
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [147.75.193.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -1.5 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1tiW7u-0002Lt-7D
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix slab-out-of-bounds read in
 ea_get()
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
From: Greg KH via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Greg KH <gregkh@linuxfoundation.org>
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, ancowi69@gmail.com,
 syzbot <syzbot+4e6e7e4279d046613bc5@syzkaller.appspotmail.com>,
 zhaomengmeng@kylinos.cn, llfamsec@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Thu, Feb 13, 2025 at 12:20:25AM +0000, Qasim Ijaz wrote:
> During the "size_check" label in ea_get(), the code checks if the extended 
> attribute list (xattr) size matches ea_size. If not, it logs 
> "ea_get: invalid extended attribute" and calls print_hex_dump().
> 
> Here, EALIST_SIZE(ea_buf->xattr) returns 4110417968, which exceeds 
> INT_MAX (2,147,483,647). Then ea_size is clamped:
> 
> 	int size = clamp_t(int, ea_size, 0, EALIST_SIZE(ea_buf->xattr));
> 
> Although clamp_t aims to bound ea_size between 0 and 4110417968, the upper 
> limit is treated as an int, causing an overflow above 2^31 - 1. This leads 
> "size" to wrap around and become negative (-184549328).
> 
> The "size" is then passed to print_hex_dump() (called "len" in 
> print_hex_dump()), it is passed as type size_t (an unsigned 
> type), this is then stored inside a variable called 
> "int remaining", which is then assigned to "int linelen" which 
> is then passed to hex_dump_to_buffer(). In print_hex_dump() 
> the for loop, iterates through 0 to len-1, where len is 
> 18446744073525002176, calling hex_dump_to_buffer() 
> on each iteration:
> 
> 	for (i = 0; i < len; i += rowsize) {
> 		linelen = min(remaining, rowsize);
> 		remaining -= rowsize;
> 
> 		hex_dump_to_buffer(ptr + i, linelen, rowsize, groupsize,
> 				   linebuf, sizeof(linebuf), ascii);
> 	
> 		...
> 	}
> 	
> The expected stopping condition (i < len) is effectively broken 
> since len is corrupted and very large. This eventually leads to 
> the "ptr+i" being passed to hex_dump_to_buffer() to get closer 
> to the end of the actual bounds of "ptr", eventually an out of 
> bounds access is done in hex_dump_to_buffer() in the following 
> for loop:
> 
> 	for (j = 0; j < len; j++) {
> 			if (linebuflen < lx + 2)
> 				goto overflow2;
> 			ch = ptr[j];
> 		...
> 	}
> 
> To fix this we should validate "EALIST_SIZE(ea_buf->xattr)" 
> before it is utilised.
> 
> Reported-by: syzbot <syzbot+4e6e7e4279d046613bc5@syzkaller.appspotmail.com>
> Tested-by: syzbot <syzbot+4e6e7e4279d046613bc5@syzkaller.appspotmail.com>
> Closes: https://syzkaller.appspot.com/bug?extid=4e6e7e4279d046613bc5
> Fixes: d9f9d96136cb ("jfs: xattr: check invalid xattr size more strictly")
> Signed-off-by: Qasim Ijaz <qasdev00@gmail.com>
> ---
>  fs/jfs/xattr.c | 15 ++++++++++-----
>  1 file changed, 10 insertions(+), 5 deletions(-)
> 
> diff --git a/fs/jfs/xattr.c b/fs/jfs/xattr.c
> index 24afbae87225..7575c51cce9b 100644
> --- a/fs/jfs/xattr.c
> +++ b/fs/jfs/xattr.c
> @@ -559,11 +555,16 @@ static int ea_get(struct inode *inode, struct ea_buffer *ea_buf, int min_size)
>  
>        size_check:
>  	if (EALIST_SIZE(ea_buf->xattr) != ea_size) {
> -		int size = clamp_t(int, ea_size, 0, EALIST_SIZE(ea_buf->xattr));
> -
> -		printk(KERN_ERR "ea_get: invalid extended attribute\n");
> -		print_hex_dump(KERN_ERR, "", DUMP_PREFIX_ADDRESS, 16, 1,
> -				     ea_buf->xattr, size, 1);
> +		if (unlikely(EALIST_SIZE(ea_buf->xattr) > INT_MAX)) {
> +			printk(KERN_ERR "ea_get: extended attribute size too large: %u > INT_MAX\n",
> +			       EALIST_SIZE(ea_buf->xattr));
> +		} else {
> +			int size = clamp_t(int, ea_size, 0, EALIST_SIZE(ea_buf->xattr));
> +
> +			printk(KERN_ERR "ea_get: invalid extended attribute\n");
> +			print_hex_dump(KERN_ERR, "", DUMP_PREFIX_ADDRESS, 16, 1,
> +				       ea_buf->xattr, size, 1);
> +		}
>  		ea_release(inode, ea_buf);
>  		rc = -EIO;
>  		goto clean_up;
> -- 
> 2.39.5
> 

Hi,

This is the friendly patch-bot of Greg Kroah-Hartman.  You have sent him
a patch that has triggered this response.  He used to manually respond
to these common problems, but in order to save his sanity (he kept
writing the same thing over and over, yet to different people), I was
created.  Hopefully you will not take offence and will fix the problem
in your patch and resubmit it so that it can be accepted into the Linux
kernel tree.

You are receiving this message because of the following common error(s)
as indicated below:

- You have marked a patch with a "Fixes:" tag for a commit that is in an
  older released kernel, yet you do not have a cc: stable line in the
  signed-off-by area at all, which means that the patch will not be
  applied to any older kernel releases.  To properly fix this, please
  follow the documented rules in the
  Documentation/process/stable-kernel-rules.rst file for how to resolve
  this.

If you wish to discuss this problem further, or you have questions about
how to resolve this issue, please feel free to respond to this email and
Greg will reply once he has dug out from the pending patches received
from other developers.

thanks,

greg k-h's patch email bot


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
