Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 55ADA42C246
	for <lists+jfs-discussion@lfdr.de>; Wed, 13 Oct 2021 16:09:14 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1maew2-0000qP-E3; Wed, 13 Oct 2021 14:08:46 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <keescook@chromium.org>) id 1maXk0-0005MD-U6
 for jfs-discussion@lists.sourceforge.net; Wed, 13 Oct 2021 06:27:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C7+rA9/qIKI+jEKdGT8jq286cyAFBOUDDboMnfms+Z8=; b=bI45zGb+EYNYtd3fCKZ2qbxTxk
 zDec+pw33BfGbOCR1flSajf6VC3cAdNqG9AcjpERFv16H3vqT0Wp6R4hiKnocjRaV3PMQSwoBw/IS
 9Niy4yDURoHoxMm5UgmO/MtGq0P1e8TYdNJ6pqlm4hh/f/iUfxlKT+YM9Karyk0NBs0s=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C7+rA9/qIKI+jEKdGT8jq286cyAFBOUDDboMnfms+Z8=; b=hJQ0Tmq6cGQRMJJDaFZT0DNFHP
 uiqtJlqXXbi/owUH0ULwIn0WRWZ60p73yvgTiJ5YMwrPZjfGIaL0muPv7eTkO/BrTJu5sRFzyJzj1
 8MsK1NmSaJBL5gY2MlufXm1foweDXtrSPLARX66rUl72gJp3OH0iRDammEiaCG9FQhuY=;
Received: from mail-pj1-f47.google.com ([209.85.216.47])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1maXjx-007LJa-E7
 for jfs-discussion@lists.sourceforge.net; Wed, 13 Oct 2021 06:27:52 +0000
Received: by mail-pj1-f47.google.com with SMTP id
 ls18-20020a17090b351200b001a00250584aso3618999pjb.4
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 12 Oct 2021 23:27:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=C7+rA9/qIKI+jEKdGT8jq286cyAFBOUDDboMnfms+Z8=;
 b=AlEYQ5u0lf8LlpP+7qsCcuJhK1pgOk4qAHuS3VO4jhvcYvvdHIhevJhnSmtjCxYajF
 GvRWvFMVajscl3jlCv3bKH7RKiMCJHNfpDbORo8xCSB0MCLratUhvvPInP4hPM2sN7/u
 axF+0KLgxbxN6eO5bdOoxf3QMqBfSL0vk4cKc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=C7+rA9/qIKI+jEKdGT8jq286cyAFBOUDDboMnfms+Z8=;
 b=tR9+kjq6kQXHqg99xu/4EEwfO799Ejr6otxOyEGDDd5q94Q3OdG05J83Zqt0klmvPo
 ENr5x+degVQW/kcgIaiWnYeCdchXcmh2g7afRI9C7TlZnGY7L7B86RgSaw63V09DhuDV
 k7Hck9XnOMbvoCUDmtti/kPwFrbAP5k3SBa3ehepIK9ihpba6b7G1BELVa0str7syN/e
 UdXOrf4DAWWAwEitvnu3b2ItDtWx8ZsGKhWvONHUrU7wToqhbS/lQ4WDvD21M8nBhZc4
 GB19BcLfsTiDsXNyIXW7p6y2WJzin8xc9uusbuY4vhv0tehCxtBjAvPuup9JVmFK7mSt
 oqdw==
X-Gm-Message-State: AOAM530As4BQgXhJ6VgpmEG5jgsUHjBqjX2GTAyou/9eC8uvIvNH1UoM
 +Ueb14rDnr7Gr1USX5U8jpmqUw==
X-Google-Smtp-Source: ABdhPJz8mp+/J7KQDpbHq7K2lAJxf17Ai5GLPqj67ERcH9Uej4DEhzNclBgAGGyGj3QY5e4RheoMRg==
X-Received: by 2002:a17:90b:88d:: with SMTP id
 bj13mr4255866pjb.211.1634106463887; 
 Tue, 12 Oct 2021 23:27:43 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id x15sm7730841pgo.48.2021.10.12.23.27.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 12 Oct 2021 23:27:43 -0700 (PDT)
Date: Tue, 12 Oct 2021 23:27:42 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Message-ID: <202110122319.3029AE5AA@keescook>
References: <20211013051042.1065752-1-hch@lst.de>
 <20211013051042.1065752-25-hch@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211013051042.1065752-25-hch@lst.de>
X-Spam-Score: -0.9 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Oct 13, 2021 at 07:10:37AM +0200, Christoph Hellwig
 wrote: > Add a helper to return the size of sb->s_bdev in sb->s_blocksize_bits
 > based unites. Note that SECTOR_SHIFT has to be open coded d [...] 
 Content analysis details:   (-0.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was
 blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: chromium.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.47 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.47 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1maXjx-007LJa-E7
X-Mailman-Approved-At: Wed, 13 Oct 2021 14:08:32 +0000
Subject: Re: [Jfs-discussion] [PATCH 24/29] block: add a sb_bdev_nr_blocks
 helper
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

On Wed, Oct 13, 2021 at 07:10:37AM +0200, Christoph Hellwig wrote:
> Add a helper to return the size of sb->s_bdev in sb->s_blocksize_bits
> based unites.  Note that SECTOR_SHIFT has to be open coded due to
> include dependency issues for now, but I have a plan to sort that out
> eventually.

Wouldn't that just need a quick lift into a new header file to be
included by genhd.h, blkev.h, and:

drivers/mtd/ssfdc.c:#define SECTOR_SHIFT                9
fs/hfsplus/hfsplus_raw.h:#define HFSPLUS_SECTOR_SHIFT         9

I think that's worth doing at some point in this series since genhd.h
already has existing open-coded "9"s. And, really, a *lot* of other
places too:

$ git grep -E '(<<|>>) 9' | grep -E '\b(block|blk|sector|bdev)\b' | wc -l
240

> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  include/linux/genhd.h | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/include/linux/genhd.h b/include/linux/genhd.h
> index 082a3e5fd8fa1..6eaef8fa78bcd 100644
> --- a/include/linux/genhd.h
> +++ b/include/linux/genhd.h
> @@ -245,6 +245,12 @@ static inline sector_t get_capacity(struct gendisk *disk)
>  	return bdev_nr_sectors(disk->part0);
>  }
>  
> +static inline u64 sb_bdev_nr_blocks(struct super_block *sb)
> +{
> +	return bdev_nr_sectors(sb->s_bdev) >>
> +		(sb->s_blocksize_bits - 9 /* SECTOR_SHIFT */);
> +}
> +
>  int bdev_disk_changed(struct gendisk *disk, bool invalidate);
>  void blk_drop_partitions(struct gendisk *disk);
>  
> -- 
> 2.30.2
> 

-- 
Kees Cook


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
