Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D6A8D3B1ECF
	for <lists+jfs-discussion@lfdr.de>; Wed, 23 Jun 2021 18:39:18 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1lw5tx-0006ik-Ci; Wed, 23 Jun 2021 16:38:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <paskripkin@gmail.com>) id 1lw5tv-0006ic-Ip
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Jun 2021 16:38:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TUutKG4F+W5pEfTyRo0eILmARbQ2r9tO+kogVemQTQg=; b=PgTQXXiBBi3cdIjE1LRs3sIV2J
 tc46JWVQqe2JEhu3o9QeBVTyeXXczXCEVXl6xUPwdtxNAuyl7u8Dncukp36ih/GZwkDIDoGrz8cD0
 vdMtMXWIzxc/OyVmgjc7GyJnRlbC5xRh+MlK4o1stJAmScKK2FpfHTiEJFWHzK2jsmeg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TUutKG4F+W5pEfTyRo0eILmARbQ2r9tO+kogVemQTQg=; b=kmKNFKVj2f3fgo2+69SP//eWZK
 C1mrcL0+RBTI1O/l8AuFlwvrcNTlkwjT4g7AWqhLMSBKnRsf0LxLhJa221PD1Q3/es0H8HYrALOMf
 5rPm1LGAhJtnJUcvnr8AQbR+Hke8EBcRHOINa3uHGGlPfq1lkFRqIUi5thGk/0lBQv3c=;
Received: from mail-lf1-f45.google.com ([209.85.167.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1lw5tr-0000eW-Mg
 for jfs-discussion@lists.sourceforge.net; Wed, 23 Jun 2021 16:38:55 +0000
Received: by mail-lf1-f45.google.com with SMTP id r5so5186509lfr.5
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 23 Jun 2021 09:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=TUutKG4F+W5pEfTyRo0eILmARbQ2r9tO+kogVemQTQg=;
 b=Nj8NqarWd1i9ntoq5E6MFTQKr/NV5AymNo/Lpnvk9s6flsvmof6do3TgtloBjwWlBg
 YRpgayr4oLJ89OzULoT2NSt8hwTwTcoSb8ffKZ2/Kn2sDqDF6YIDtEQqjym4MbMVoEvF
 4367aOslrYvM0CEkk7g0E2cddPkD4ooco0IoQqewJjMoYGkFwMm7Ki5Da7Rqe/9DSe0d
 lXflO7nowCXNqs7A3AtGZh7S7b8il3UoOH/TyKkAT1DXjNHZu31Sd7lfM3YY8BWnSbUo
 RdT0PYcvmyYvjDX4WHgheZOZQOjo/PalJUiUlyf3e3dDx1B7UJbjTJpay0Ydqc+9Miyz
 dlVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=TUutKG4F+W5pEfTyRo0eILmARbQ2r9tO+kogVemQTQg=;
 b=UvtBpKN1/6V0hWe1GMmRRI1BFuqwKvbbAd8gDJsbtgyOk609idtXPiXqmM7vHY6zyk
 HNqQWBt44EV3Lxdy7DXprsDYpznjIGJnR1CxxEYFttRR32SHEXiT90M1cNAcb/KQFj04
 8EYGLXFNTv4JKRLRqeAiFpmrJQNhYXR8VxREoO288/f+1zEvXbez9Esoq/00O2Brh2fu
 jK2wz0Bv1Ch3kShLLp7eHlADMjdNlqP3VuFPe77thmVEmV0JPngx/7GVcdhT8QBLbbyy
 xf/37XKi6vze8WMl74c1xTetnoM5msLJQOo3LFweOitrrlJceIHuRBgWbLABDiKhiuuJ
 FJBw==
X-Gm-Message-State: AOAM533H6IuTb1IEIFCeDtHFSblAiKik5M/JXhL06PqjQXE608so0oX3
 wRbduFuIbtrcd5qPRTmQDhA=
X-Google-Smtp-Source: ABdhPJwktWT0yn7Ci7FhnYW5SIXFGq/LqL6I3Dr2Mps5mokPWXhrc8lzgAZQ6M36Q6EPVBlBAXApjg==
X-Received: by 2002:a05:6512:3049:: with SMTP id
 b9mr351134lfb.205.1624466326736; 
 Wed, 23 Jun 2021 09:38:46 -0700 (PDT)
Received: from localhost.localdomain ([94.103.225.155])
 by smtp.gmail.com with ESMTPSA id t24sm17475ljc.45.2021.06.23.09.38.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Jun 2021 09:38:46 -0700 (PDT)
Date: Wed, 23 Jun 2021 19:38:42 +0300
From: Pavel Skripkin <paskripkin@gmail.com>
To: Dave Kleikamp <dave.kleikamp@oracle.com>
Message-ID: <20210623193842.5f164966@gmail.com>
In-Reply-To: <319afbd1-afc0-bae3-c446-3530505e7b21@oracle.com>
References: <20210606142405.31047-1-paskripkin@gmail.com>
 <319afbd1-afc0-bae3-c446-3530505e7b21@oracle.com>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-suse-linux-gnu)
MIME-Version: 1.0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.45 listed in list.dnswl.org]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: appspotmail.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (paskripkin[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.45 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1lw5tr-0000eW-Mg
Subject: Re: [Jfs-discussion] [PATCH] jfs: fix GPF in diFree
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
 syzbot+0a89a7b56db04c21a656@syzkaller.appspotmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, 23 Jun 2021 09:13:07 -0500
Dave Kleikamp <dave.kleikamp@oracle.com> wrote:

> On 6/6/21 9:24 AM, Pavel Skripkin wrote:
> > Avoid passing inode with
> > JFS_SBI(inode->i_sb)->ipimap == NULL to
> > diFree()[1]. GFP will appear:
> 
> I'm a little curious how we get as far as creating and freeing 
> non-special inodes if ipimap == NULL.
> 
> > 
> > 	struct inode *ipimap = JFS_SBI(ip->i_sb)->ipimap;
> > 	struct inomap *imap = JFS_IP(ipimap)->i_imap;
> > 
> > JFS_IP() will return invalid pointer when ipimap == NULL
> > 
> > Call Trace:
> >   diFree+0x13d/0x2dc0 fs/jfs/jfs_imap.c:853 [1]
> >   jfs_evict_inode+0x2c9/0x370 fs/jfs/inode.c:154
> >   evict+0x2ed/0x750 fs/inode.c:578
> >   iput_final fs/inode.c:1654 [inline]
> >   iput.part.0+0x3fe/0x820 fs/inode.c:1680
> >   iput+0x58/0x70 fs/inode.c:1670
> 
> Is there more to the stack trace? Is this part of a failed mount()?
> 

Hi, Dave!

Yes, it was caused by mount fail. Log:

[  924.076873][ T8430] jfs_mount: diMount(ipaimap) failed w/rc = -5

So, it's errout21 label in jfs_mount(). I guess, It's early failure and
some fields wasn't initialized properly. I don't really remember my
debug results, because it was a long time ago, but I can do some debug
work again if needed!


Thanks for feedback!

> > 
> > Reported-and-tested-by:
> > syzbot+0a89a7b56db04c21a656@syzkaller.appspotmail.com
> > Signed-off-by: Pavel Skripkin <paskripkin@gmail.com>ipimap == NULL
> 
> I don't doubt that this happened, so I'll apply the patch which is 
> obviously safe.
> 
> > ---
> >   fs/jfs/inode.c | 3 ++-
> >   1 file changed, 2 insertions(+), 1 deletion(-)
> > 
> > diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
> > index 6f65bfa9f18d..b0eb9c85eea0 100644
> > --- a/fs/jfs/inode.c
> > +++ b/fs/jfs/inode.c
> > @@ -151,7 +151,8 @@ void jfs_evict_inode(struct inode *inode)
> >   			if (test_cflag(COMMIT_Freewmap, inode))
> >   				jfs_free_zero_link(inode);
> >   
> > -			diFree(inode);
> > +			if (JFS_SBI(inode->i_sb)->ipimap)
> > +				diFree(inode);
> >   
> >   			/*
> >   			 * Free the inode from the quota
> > allocation.
> > 




With regards,
Pavel Skripkin


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
