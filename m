Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E63862C8C8
	for <lists+jfs-discussion@lfdr.de>; Wed, 16 Nov 2022 20:10:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ovNnW-0001Ec-UB;
	Wed, 16 Nov 2022 19:10:10 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <ritesh.list@gmail.com>) id 1ovNJZ-0003z8-Id;
 Wed, 16 Nov 2022 18:39:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hYF3Hj9rSyQp4X4qzG1/mtul7nlvlXjBvw9fIIZhTos=; b=PehH+Lj45kku9OJkKiPdaxAt4q
 jMxpeyIEeRc2vkNydUJ6tdfkUFB1qLnEqA7J+g6jcNY/yaiHZOTH2uWwnIy0FVpmzMGSpwKEBSBbI
 Ftv/T5Ne6sfYj5h2lbIOHxAoQHNSpOwIZPhunlH1/MZhXbdbsWajb25fw+es7lcgLajU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hYF3Hj9rSyQp4X4qzG1/mtul7nlvlXjBvw9fIIZhTos=; b=MXL8jGDaA8FMi8gavznr3MfKij
 nxQu3LRKxcd9i/3dJRSNod4+wNBsrQfcQWVjnXDOWR5wRSDqxhC+t7gPNph8gM4sxWu12zIvJ/O+T
 jTIx8Oi0IjwCv3hlT6pnqdXUqk+j4enFJPbFlWUnnFSBXk795/2GQZWI+HYbH9GYuHJA=;
Received: from mail-pg1-f180.google.com ([209.85.215.180])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ovNJY-0000uw-UD; Wed, 16 Nov 2022 18:39:13 +0000
Received: by mail-pg1-f180.google.com with SMTP id o13so17470594pgu.7;
 Wed, 16 Nov 2022 10:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=hYF3Hj9rSyQp4X4qzG1/mtul7nlvlXjBvw9fIIZhTos=;
 b=X/3VlFQOq/F4K880LRk9TjjvLSZlvu7/kRCnM9p5B3rYiLfewmE7LcvkodiAPiM7DU
 raLagsEw7CdstzIfRRDQz9Le/ayij3LC1LTJRZHZxZkqIdDJj+AgU3FGWfWpEYNI63hd
 JHT6SvBQ94N/ok8vRWKDzFTw0PvRImdHoqK9ezlfgiLhWQpzYE91xtGeyNwOlJistHMc
 UGjhbEzpM/cIjmxjL/mrzcDHpeePSLDv0f7N4d6JVNznieNE4hs4/NJOZBhlox3hzYej
 zUlZxtCAbtrkFHhBGxuKAuuS96kObNhGGMwm9Pv+FlRMqdlXaO+8r+jE/zxwLpwZYYsk
 NOPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=hYF3Hj9rSyQp4X4qzG1/mtul7nlvlXjBvw9fIIZhTos=;
 b=If16UgBJhDqRd+5mpB1sulqB+xUhICaeG4BPKwQX1Jghh9A7XijXp3kiP5qhh38h/M
 GL5PkNY4T1J7zvWBiKW7bytZyUFQIu/laknp0cBH1rKGMM+N91g2uoKODAvOhSOFaR0/
 acCtVH3+gw1RVWG05lt4LSaB3cI1CcM0Pn0kgdQxWgBknrWmzbDOlKwSMc6IWseauw7Q
 YVfBvm0V1p9P5vieuG6G98CRZiYGqVJ/qZ1pid1GJznGlcd8vDDnr5Bg/KFvR0WwcAMV
 UgfnBXe7sz2hKduD7v2RAwqIRc/UuJgJRWtvf4wQGuNbTGk0ajHKXmVHMc29tMqUgz0R
 ElBg==
X-Gm-Message-State: ANoB5pk4kWnzr4gBoGheLnhR8MHchY+sBTEvMNJFJKnED+U/b7cVXjx3
 IWxO69NUJwpO1LCyz0VvH94=
X-Google-Smtp-Source: AA0mqf5CWC9cDzSsVhgoM5hzB1p88qRacHWHl2gRD4exiTbTBQYf+GC47C06p+H1E34QifQ+npSGkQ==
X-Received: by 2002:a62:1ad4:0:b0:56b:add7:fe2f with SMTP id
 a203-20020a621ad4000000b0056badd7fe2fmr24188517pfa.51.1668623947228; 
 Wed, 16 Nov 2022 10:39:07 -0800 (PST)
Received: from localhost ([2406:7400:63:f20b:f6ca:e236:f59f:8c18])
 by smtp.gmail.com with ESMTPSA id
 a4-20020aa795a4000000b0056d7cc80ea4sm11234366pfk.110.2022.11.16.10.39.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 16 Nov 2022 10:39:06 -0800 (PST)
Date: Thu, 17 Nov 2022 00:09:00 +0530
From: "Ritesh Harjani (IBM)" <ritesh.list@gmail.com>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <20221116183900.yzpcymelnnwppoh7@riteshh-domain>
References: <20221113162902.883850-1-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221113162902.883850-1-hch@lst.de>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 22/11/13 05:28PM, Christoph Hellwig wrote: > Hi all, >
 > The VM doesn't need or want ->writepage for writeback and is fine with >
 just having ->writepages as long as ->migrate_folio is implemented. 
 Content analysis details:   (-0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [ritesh.list[at]gmail.com]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.180 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.215.180 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1ovNJY-0000uw-UD
X-Mailman-Approved-At: Wed, 16 Nov 2022 19:10:10 +0000
Subject: Re: [Jfs-discussion] start removing writepage instances
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Bob Copeland <me@bobcopeland.com>,
 linux-karma-devel@lists.sourceforge.net, linux-mm@kvack.org,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>, Jan Kara <jack@suse.com>,
 linux-fsdevel@vger.kernel.org, Sungjong Seo <sj1557.seo@samsung.com>,
 Namjae Jeon <linkinjeon@kernel.org>,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 22/11/13 05:28PM, Christoph Hellwig wrote:
> Hi all,
> 
> The VM doesn't need or want ->writepage for writeback and is fine with
> just having ->writepages as long as ->migrate_folio is implemented.

Ok, so here is, (what I think) is the motivation for doing this. 
Please correct me if this is incorrect... 
1. writepage is mainly called from pageout, which happens as part of the memory
   reclaim. Now IIUC from previous discussions [1][2][3], reclaims happens from
   the tail end of the LRU list which could do an I/O of a single page while 
   an ongoing writeback was in progress of multiple pages. This disrupts the I/O 
   pattern to become more random in nature, compared to, if we would have let 
   writeback/flusher do it's job of writing back dirty pages.

   Also many filesystems behave very differently within their ->writepage calls,
   e.g. ext4 doesn't actually write in ->writepage for DELAYED blocks.

2. Now the other place from where ->writepage can be called from is, writeout()
   function, which is a fallback function for migration (fallback_migrate_folio()).
   fallback_migrate_folio() is called from move_to_new_folio() if ->migrate_folio 
   is not defined for the FS.

So what you are doing here is removing the ->writepage from address_space
operations of the filesystems which implements ->writepage using
block_write_full_page() (i.e. those who uses buffer_heads). This is done for 
those FS who already have ->migrate_folio() implemented (hence no need of
->writepage).
...Now this is also a step towards reducing the callers from kernel which uses
buffer_heads.

[1]: https://lore.kernel.org/all/1310567487-15367-1-git-send-email-mgorman@suse.de/
[2]: https://lore.kernel.org/all/20181107063127.3902-2-david@fromorbit.com/
[3]: https://lore.kernel.org/all/1271117878-19274-1-git-send-email-david@fromorbit.com/

Is above a correct understanding?

> 
> This series removes all ->writepage instances that use
> block_write_full_page directly and also have a plain mpage_writepages
> based ->writepages.

Ok.


> 
> Diffstat:
>  fs/exfat/inode.c   |    9 ++-------
>  fs/ext2/inode.c    |    6 ------
>  fs/fat/inode.c     |    9 ++-------
>  fs/hfs/inode.c     |    2 +-
>  fs/hfsplus/inode.c |    2 +-
>  fs/hpfs/file.c     |    9 ++-------
>  fs/jfs/inode.c     |    7 +------
>  fs/omfs/file.c     |    7 +------
>  fs/udf/inode.c     |    7 +------
>  9 files changed, 11 insertions(+), 47 deletions(-)


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
