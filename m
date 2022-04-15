Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DAD95023D7
	for <lists+jfs-discussion@lfdr.de>; Fri, 15 Apr 2022 07:25:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1nfEST-0001xa-ON; Fri, 15 Apr 2022 05:25:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <prvs=0972008b0=damien.lemoal@opensource.wdc.com>)
 id 1nfESS-0001xT-3D
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Apr 2022 05:25:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rwvsmsnne7SnULh2hbKByo2WuoxQie2Xsqxi/Bxqgj8=; b=OYg+PRmtVdEjQEONkCZwn3Ito3
 xs3iuD1ZqEw5QoVWASWjfL61R9JEIp9XQhtX9mxKCbeIzsfDRCC1aScsqnIH4fue1kMNqi+0TITFs
 I3eFvcSJrgdnBxwa6FUQ9q6HxMR+jFDA8srumhXa7ckMm4lTT87AQjoI/WbeLoP9NnjU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=rwvsmsnne7SnULh2hbKByo2WuoxQie2Xsqxi/Bxqgj8=; b=nOTamDyRNTzi1P8uxP3o4qPgQh
 wEwRuTyGCLCwl9afFpGlwhrZDqFKWarOFyX9HtDYEO+YVC9pk2ImjMov71+1DAgwbGqShzx/LNegp
 cbHL9u0BZL2Vj7rdfOpC5mhwLUunyfgCd/UfuuiR2Uvy7+K4vze/ILYG4meZXa3sMIi0=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.94.2)
 id 1nfESP-0009dA-HE
 for jfs-discussion@lists.sourceforge.net; Fri, 15 Apr 2022 05:25:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1650000322; x=1681536322;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=wC6/PVYH+J9es8aT7sK5ZaGwsGnDQHOFu7y4PW6r0NI=;
 b=PoQsyeRbSgPi+VOqVlQoWYv/Em/CsiaChf7gAGl1MsP+HLjrcNwh44xA
 CLMdNndU856wdzNQMsk3TZ7xGFP6StoV5U0Ce5wjBlLxuR9D0DGJiNFQH
 YgqSc5nflbllSIovw22CzO+7+Jo9LSzzN3bfuUypV8SgvqdDuYcJ1TMDZ
 2phTUXYLiNHKuVWBgw4cik7b/Zj6wVb4PK1Pc5wIwh2kXJU5Byh+6Zjyu
 +qAk+nUw/4dP/Z8EYD9vgN2Qy0P9s4HRm/6R5Fj1o7/E9GYkX4oQ2EyN9
 U7q1g4W3SJ+VYpkZFujujosaQhf5WRlvgIJCmPKjCuYPXjIwc6lckyFjy Q==;
X-IronPort-AV: E=Sophos;i="5.90,261,1643644800"; d="scan'208";a="198866632"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 15 Apr 2022 13:09:49 +0800
IronPort-SDR: QYR/6hqR00ke/myvXYsOl03earhNkej/Xh+FlFBAfS1Y8M2XzWNXYGO9kQ9N5L4pTwpHBkpjNP
 U5Z75OBTHIcXqRNT2JXacNxob2t2QzWxhrItRwFNb93wyww2m3rANCabOMDGX6L6JgRx1dKpTl
 cajOklcyHbla90o+SkYn4p8VQiLKvNU1nRZZiGYQvbmtTZj19N5pVZOuRhJmyUH39LBDUnTW8q
 QsNGucJ68w+P3afxcnGVux17/KwU96jEUDAjG9Oa9JgrGT4X5b7Sz9h9cmNxDc9XubY//Zxzhf
 6Vb4LYsbTkPz0/jh0AG4kJ3t
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 14 Apr 2022 21:40:13 -0700
IronPort-SDR: uGXcrMycK0gSz7Whos7+sFso2Fl6ygf4PYTULlPPW+N7wudA+9AG+6n0n4jr3w77888uFQoSLL
 ufkplA+Lm4zs85JjXV0pNONvUY/npotfnd8jb7IziLxtUaTtrCedfbFhmprz2T4q9eXbZEtvc+
 /ivgp6GMMsl1E6ZaPUSrJxhcZT3cEoaDi20nnVTPdNzzYOLAyY4RRWo6fD7NrCbL/FSo9vKeBe
 Cehl9/npiY7FNAYCRDyWAwz4NC0TypTWOQBfTCXrST13QiFd84PCM2OItL4ltfOU5LiYn3GHKI
 wnQ=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 14 Apr 2022 22:09:49 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4KfksS0tCxz1SVp0
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 14 Apr 2022 22:09:48 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1649999387; x=1652591388; bh=wC6/PVYH+J9es8aT7sK5ZaGwsGnDQHOFu7y
 4PW6r0NI=; b=A2KBgHYSLIEiloAT36KBlSnrdHo/5oKL9FrIFynJT5WRtSMAWFY
 bOfFXbV9aPU/SW14KWhWGoxgvZNpDxlNmySfQsvY8YKVzB0GPsCqMriDKUnvzDGe
 gxI79wWgz9d4ps/B6Xlf+gQiJxT1WJ1ZvXg2qG+PSKztllpdqubmLYAwOO/nz5St
 h4S8KA8vLEE0CNTHJjAA8Hcfkt3KCfxgWm/synsXo5jFqWGlKXVMBpl0q6F/zUl8
 QMkInWk2S7O06U7jACfYKTCYPrMyVz97bbnYwKLXgej41iNgxlqjzLyt5sjDI1Lg
 BUEAK+PEVHrx0bfVbsoqkvKO8/sBQvwsP4Q==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id mIRvArX0-Ckh for <jfs-discussion@lists.sourceforge.net>;
 Thu, 14 Apr 2022 22:09:47 -0700 (PDT)
Received: from [10.225.163.9] (unknown [10.225.163.9])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4KfksM3c9Fz1Rvlx;
 Thu, 14 Apr 2022 22:09:43 -0700 (PDT)
Message-ID: <62ebc311-e5ef-cea5-5236-0c83d1a3eb64@opensource.wdc.com>
Date: Fri, 15 Apr 2022 14:09:42 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Christoph Hellwig <hch@lst.de>, Jens Axboe <axboe@kernel.dk>
References: <20220415045258.199825-1-hch@lst.de>
 <20220415045258.199825-11-hch@lst.de>
Organization: Western Digital Research
In-Reply-To: <20220415045258.199825-11-hch@lst.de>
X-Spam-Score: -5.0 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 4/15/22 13:52, Christoph Hellwig wrote: > Use the bdev
 based helper instead of poking into the queue. > > Signed-off-by: Christoph
 Hellwig <hch@lst.de> > --- > mm/swapfile.c | 2 +- > 1 file changed [...] 
 Content analysis details:   (-5.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -2.5 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1nfESP-0009dA-HE
Subject: Re: [Jfs-discussion] [PATCH 10/27] mm: use bdev_is_zoned in
 claim_swapfile
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
From: Damien Le Moal via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Damien Le Moal <damien.lemoal@opensource.wdc.com>
Cc: jfs-discussion@lists.sourceforge.net, linux-nvme@lists.infradead.org,
 virtualization@lists.linux-foundation.org, linux-mm@kvack.org,
 dm-devel@redhat.com, target-devel@vger.kernel.org,
 linux-mtd@lists.infradead.org, drbd-dev@lists.linbit.com,
 linux-s390@vger.kernel.org, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, cluster-devel@redhat.com,
 xen-devel@lists.xenproject.org, linux-ext4@vger.kernel.org,
 linux-um@lists.infradead.org, nbd@other.debian.org,
 linux-block@vger.kernel.org, linux-bcache@vger.kernel.org,
 ceph-devel@vger.kernel.org, linux-raid@vger.kernel.org,
 linux-mmc@vger.kernel.org, linux-f2fs-devel@lists.sourceforge.net,
 linux-xfs@vger.kernel.org, ocfs2-devel@oss.oracle.com,
 linux-fsdevel@vger.kernel.org, ntfs3@lists.linux.dev,
 linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 4/15/22 13:52, Christoph Hellwig wrote:
> Use the bdev based helper instead of poking into the queue.
> 
> Signed-off-by: Christoph Hellwig <hch@lst.de>
> ---
>  mm/swapfile.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/mm/swapfile.c b/mm/swapfile.c
> index 63c61f8b26118..4c7537162af5e 100644
> --- a/mm/swapfile.c
> +++ b/mm/swapfile.c
> @@ -2761,7 +2761,7 @@ static int claim_swapfile(struct swap_info_struct *p, struct inode *inode)
>  		 * write only restriction.  Hence zoned block devices are not
>  		 * suitable for swapping.  Disallow them here.
>  		 */
> -		if (blk_queue_is_zoned(p->bdev->bd_disk->queue))
> +		if (bdev_is_zoned(p->bdev))
>  			return -EINVAL;
>  		p->flags |= SWP_BLKDEV;
>  	} else if (S_ISREG(inode->i_mode)) {

Looks good.

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
