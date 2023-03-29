Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D13E6CF7A3
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:45:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfTX-0006qO-QN;
	Wed, 29 Mar 2023 23:45:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfTV-0006qH-4r for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:45:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=H9Wnxri7/pl0aVVsp6O45Pp8b0Po4MrKz/j+WyI/G60=; b=Is5n/Tn0lb65if1h4IoimIMZAY
 6Z7laGX2ZcD6KfOkU83zMsgkAV9ouSO82ulrG+ZpSmmckTY9dPMTbHa8UzSBrIszD6p3k8slgxiHJ
 PHqb2RzyTr2rFdaPfePVTNQo2ze3jiYz4+SGzvQJtBU7zjqGi3Ki88t/eRgWV/KWOYBY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=H9Wnxri7/pl0aVVsp6O45Pp8b0Po4MrKz/j+WyI/G60=; b=RttXqOcRs0kFe+w6P8sc7zB/0V
 6c/59bkZqo6S7szojEJu1Ss+ReA1v5+ZWdrr1ed6AxowzNb3PLQtTKAVjMHdSS6Aq3AVDhG7j+IpI
 oT/MV7CMkvZVrz/UNLEobMTnYmliABGih9TcEcEKdajsjTlbNekNRfIt/YPLZIn1bNQ8=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfTP-0001yD-Da for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:45:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680133499; x=1711669499;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=u0GDcNaX/W8JMXWCJKoDWEVkmUM3b9b6zaDxlqDnkVw=;
 b=Ec558SKdkBsNyDRNbuet5fjTdKyIuXYOJH/ajeWsw142RuNLZTov2XfA
 GqsmpWhuUs+sm/mj9UkV4/L5wUB2sgeDk2RWyEkTmtONYBq1TnvWrCKkK
 Bawte9Uer8g/x0c8Frmx8kCFUCJ5GOYEBZumgD1raRzN5Mhdger7dAzNm
 3D7+O2vFK2wLo3iF5lp/e/4FC3ZP5pxJluo13p/oyLDGDTfEJPry89sRJ
 BbovY+27hw8fYYl2OXenL31uXR52/cMyFoHPhhss0FPMegJxfBQBpy8hv
 crGvxImkAD+Gws5togGIb/cJt3TQU44evV2/eTE2AeFMwbHO33PK4wPIi Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="231809205"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:44:54 +0800
IronPort-SDR: S9FKGVrEtjFRQNOGDbmTmP+3wb3c8PLwXWhSC65OAQnpzrJjePKt6/lFaSVRHmYLac0Rk1/Q7j
 nLPQ6vuLNwmGBviwG+CZiD1Z/7hPhPaiQCCtws/tMua4hKFykQIHiJNcaXYTLAC3AsEBRA7AOe
 VF34xQh8xbt3J8SMm8QNa7hMvR35Wd+BrJFAmKuBqFm11eHQcSanRSN0hlntSajymZuO8a5OGp
 I7V9O5/NwYLqb7aDgf760GmPq/j8s4BG8NEm3YAA/H4d7g0tVsCvuxeXOsYkeDqHs+6Cc5A1yo
 tvg=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:55:21 -0700
IronPort-SDR: eCqM4IOSWTT0n27Xxs2We/dJ6EIJlEnZcqIlX6HWRGEibtEvcleqL6y/c8EhF3VFXVBXer8Cmq
 dHbZ8w3K0212vUKR22huPtvHcSgwFepBtoj6e43Aa5ECcGnWvD2qxt2tHFHxv+44nOkjD3bDf/
 mlU5Jr5BH01NseFS/7jg+YZ3xFittwGkHHObO3S6ASr4zkqR3a0o8GXLL4On7mDvgmo1qwlUFj
 lsme486ZjuoTm2ebCw5oJ3kWNIybu7k/KRVXcvIg/FBBRJoX1tFtzE4XYKZhN/seHZ8Je1H8pd
 1JM=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:44:54 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn37T0Bnxz1RtVv
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:44:52 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680133492; x=1682725493; bh=u0GDcNaX/W8JMXWCJKoDWEVkmUM3b9b6zaD
 xlqDnkVw=; b=sWgVImUIxq+wWv1IY/OzgZBxlMgwl6baNfK+TqDv/z9uGO4/lCt
 F80WbSTE4+zUj8V0KSvVsrvpDkaRwb4xUc4WvzxbBWL84Hn8V4HQomFckjQyxrY1
 X0XkISOSqW9QYHF6QugDBdkke58q7tb92oKEEHYiT6JSunUei+AHzcz8Sr8d1rgM
 XQE7xIDgFbTnJY20sa1jEv3CUu36WQYI/MhUDV8/3hBMQEryT+U76F6ZujWyaxcY
 Laa1jGoGfx5a4Yhez4KqWdpv/xoDLd+woYRyn3dDBSFt37g9Zj2KS3TC+gfCG56r
 o+X+Ideih0iowjTzWAbWUDYhNczPHD7idUA==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id abVjlIz4uTq2 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:44:52 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn37P0nXXz1RtVm;
 Wed, 29 Mar 2023 16:44:48 -0700 (PDT)
Message-ID: <7441afa8-3e60-79cf-66c7-4ddb692c1bcd@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:44:47 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <e2f96e539befa4f9d57f19ff1fc26cfc0d109435.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <e2f96e539befa4f9d57f19ff1fc26cfc0d109435.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:06, Johannes Thumshirn wrote: > Check if adding
 pages to resync bio fails and if bail out. > > As the comment above suggests
 this cannot happen, WARN if it actually > happens. > > This w [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfTP-0001yD-Da
Subject: Re: [Jfs-discussion] [PATCH 17/19] md: raid1: check if adding pages
 to resync bio fails
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
Cc: linux-raid@vger.kernel.org, jfs-discussion@lists.sourceforge.net,
 cluster-devel@redhat.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Song Liu <song@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, Mike Snitzer <snitzer@kernel.org>,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 David Sterba <dsterba@suse.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-btrfs@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 3/30/23 02:06, Johannes Thumshirn wrote:
> Check if adding pages to resync bio fails and if bail out.
> 
> As the comment above suggests this cannot happen, WARN if it actually
> happens.
> 
> This way we can mark bio_add_pages as __must_check.
> 
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
> ---
>  drivers/md/raid1-10.c |  7 ++++++-
>  drivers/md/raid10.c   | 12 ++++++++++--
>  2 files changed, 16 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/md/raid1-10.c b/drivers/md/raid1-10.c
> index e61f6cad4e08..c21b6c168751 100644
> --- a/drivers/md/raid1-10.c
> +++ b/drivers/md/raid1-10.c
> @@ -105,7 +105,12 @@ static void md_bio_reset_resync_pages(struct bio *bio, struct resync_pages *rp,
>  		 * won't fail because the vec table is big
>  		 * enough to hold all these pages
>  		 */
> -		bio_add_page(bio, page, len, 0);
> +		if (WARN_ON(!bio_add_page(bio, page, len, 0))) {

Not sure we really need the WARN_ON here...
Nevertheless,

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>


> +			bio->bi_status = BLK_STS_RESOURCE;
> +			bio_endio(bio);
> +			return;
> +		}
> +
>  		size -= len;
>  	} while (idx++ < RESYNC_PAGES && size > 0);
>  }
> diff --git a/drivers/md/raid10.c b/drivers/md/raid10.c
> index 6c66357f92f5..5682dba52fd3 100644
> --- a/drivers/md/raid10.c
> +++ b/drivers/md/raid10.c
> @@ -3808,7 +3808,11 @@ static sector_t raid10_sync_request(struct mddev *mddev, sector_t sector_nr,
>  			 * won't fail because the vec table is big enough
>  			 * to hold all these pages
>  			 */
> -			bio_add_page(bio, page, len, 0);
> +			if (WARN_ON(!bio_add_page(bio, page, len, 0))) {
> +				bio->bi_status = BLK_STS_RESOURCE;
> +				bio_endio(bio);
> +				goto giveup;
> +			}
>  		}
>  		nr_sectors += len>>9;
>  		sector_nr += len>>9;
> @@ -4989,7 +4993,11 @@ static sector_t reshape_request(struct mddev *mddev, sector_t sector_nr,
>  			 * won't fail because the vec table is big enough
>  			 * to hold all these pages
>  			 */
> -			bio_add_page(bio, page, len, 0);
> +			if (WARN_ON(!bio_add_page(bio, page, len, 0))) {
> +				bio->bi_status = BLK_STS_RESOURCE;
> +				bio_endio(bio);
> +				return sectors_done; /* XXX: is this correct? */
> +			}
>  		}
>  		sector_nr += len >> 9;
>  		nr_sectors += len >> 9;

-- 
Damien Le Moal
Western Digital Research



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
