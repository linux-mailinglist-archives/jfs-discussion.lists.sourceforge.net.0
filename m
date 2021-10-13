Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A13F442C243
	for <lists+jfs-discussion@lfdr.de>; Wed, 13 Oct 2021 16:09:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1maew1-0000pS-IR; Wed, 13 Oct 2021 14:08:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1maXen-0004sx-1D
 for jfs-discussion@lists.sourceforge.net; Wed, 13 Oct 2021 06:22:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FeQrChfiZcW4o0OhHTmPDOdTdbcOGCmUWNGR2fssds0=; b=IvoUpy5lyCWCtKEn2PuarE5FA7
 cM7ikdk0kKOSZ9NmvqhtV21y9+g0BeDMWsCrQD55OazXubUrOBt7D7bDI4clg5alXfa35y78W2PB3
 Dut2+1dsbzNpFd+ZePJkxdR9JiT5/kI859ToZQOkQO1zRKDnNDvxlJgvTGtUkqvBB734=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FeQrChfiZcW4o0OhHTmPDOdTdbcOGCmUWNGR2fssds0=; b=Ljsjt41medoUZGIpV7s9Fcg59H
 SRN3g3jhysJylhOl0GZsSCA4lNH+1sGRnS457Th6PtshKioYqoN8Pb8beEEc0ElCL2aUiJ7I/NiT1
 fU30wRFsZKcq6iBBJzXWBzpbZtAdh1RW0URAj2/1OTS4n4U85OhJE8d0ZPZJMa8mxWXI=;
Received: from mail-pg1-f171.google.com ([209.85.215.171])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1maXek-007Kbr-Ll
 for jfs-discussion@lists.sourceforge.net; Wed, 13 Oct 2021 06:22:28 +0000
Received: by mail-pg1-f171.google.com with SMTP id e7so1338470pgk.2
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 12 Oct 2021 23:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=FeQrChfiZcW4o0OhHTmPDOdTdbcOGCmUWNGR2fssds0=;
 b=YUuG6H1i9AjWoYvXd657AlnL8Btrj3iAYL/kBUykjBQlXgbXqBCSYgFqW+ybNjzAeB
 flHfU7/d2gVIiRxHZf0let0/mE+C7OG46tBNBXIlx9AYwOAntMTNFSW889cvlMxABatE
 ibs+ClrRJ9QM6AUZ6rkBA4X98UUtvKEjHgCX4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=FeQrChfiZcW4o0OhHTmPDOdTdbcOGCmUWNGR2fssds0=;
 b=azL/hDgZKdzDcvH2yNgwMhim+YoP5PTBfPu/jWZ02mKw3BoLXpahcT/epotBlrZrGh
 QFPjaTsH+MuIHKT/pjAm83juGW+sgtdonT6zRVZuJIYdFQxjvBLKbghoXwmo/J6YIjs+
 K/cL2b224JJjPAzUXR8nO1YS0l8K3oSmHhGr8FuWeNp7/XVg0W41VmDXNUqDl9zVVGU7
 Vj4N9/YH2MOulShK2LqjwfhDTwr0HJSGBXlkteVZ86HUMLy5rqsY2skbkgLarauC5Gh7
 uLvCzEVWPnmFK8fS4yYtf7E/umIvbElmag4zroz54Z3fLKAR8FDqbiFiA60prX3CxU6V
 Gucw==
X-Gm-Message-State: AOAM5314s+WNa9O8ywJ5nzic5Z14mW2eNZCPIKJ4PuF+xrIPM+6Mk0sp
 aHl9tR9cI2Q+x/LcYwiBCkAuElm84rA3Eg==
X-Google-Smtp-Source: ABdhPJwmuFRgBzGEKwhfH80cvrnOY6Q3ng7kI1vOHwrwBDvns1KKcyGoScUlnacdxAU8v7fqrhUUVw==
X-Received: by 2002:a63:d654:: with SMTP id d20mr26275164pgj.122.1634105772620; 
 Tue, 12 Oct 2021 23:16:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a28sm13085937pfg.33.2021.10.12.23.16.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 23:16:12 -0700 (PDT)
Date: Tue, 12 Oct 2021 23:16:11 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110122315.7CFF5F6@keescook>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-13-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013051042.1065752-13-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 07:10:25AM +0200, Christoph Hellwig
 wrote: > Use the proper helper to read the block device size. > >
 Signed-off-by:
 Christoph Hellwig <hch@lst.de> > --- > fs/cramfs/inode.c | [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.215.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.215.171 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1maXek-007Kbr-Ll
X-Mailman-Approved-At: Wed, 13 Oct 2021 14:08:32 +0000
Subject: Re: [Jfs-discussion] [PATCH 12/29] cramfs: use bdev_nr_sectors
 instead of open coding it
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
 Mike Snitzer <snitzer@redhat.com>, linux-nvme@lists.infradead.org,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Song Liu <song@kernel.org>, dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, reiserfs-devel@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>,
 linux-ext4@vger.kernel.org, Josef Bacik <josef@toxicpanda.com>,
 Coly Li <colyli@suse.de>, linux-raid@vger.kernel.org,
 linux-bcache@vger.kernel.org, David Sterba <dsterba@suse.com>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Anton Altaparmakov <anton@tuxera.com>, Jens Axboe <axboe@kernel.dk>,
 linux-block@vger.kernel.org, linux-nfs@vger.kernel.org,
 Theodore Ts'o <tytso@mit.edu>, linux-ntfs-dev@lists.sourceforge.net,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Phillip Lougher <phillip@squashfs.org.uk>, ntfs3@lists.linux.dev,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Oct 13, 2021 at 07:10:25AM +0200, Christoph Hellwig wrote:
> Use the proper helper to read the block device size.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  fs/cramfs/inode.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/fs/cramfs/inode.c b/fs/cramfs/inode.c
> index 2be65269a987c..3e44cc3ed0543 100644
> --- a/fs/cramfs/inode.c
> +++ b/fs/cramfs/inode.c
> @@ -209,7 +209,7 @@ static void *cramfs_blkdev_read(struct super_block *sb, unsigned int offset,
>  		return read_buffers[i] + blk_offset;
>  	}
>  
> -	devsize = mapping->host->i_size >> PAGE_SHIFT;
> +	devsize = bdev_nr_sectors(sb->s_bdev) >> (PAGE_SHIFT - SECTOR_SHIFT);

I find this less readable than "bytes >> PAGE_SHIFT". I'd suggest this
use a new bdev_nr_bytes() helper.

-- 
Kees Cook


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
