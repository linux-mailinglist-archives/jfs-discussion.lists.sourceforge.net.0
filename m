Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3435F6CF753
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:34:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfIb-00057L-4Z;
	Wed, 29 Mar 2023 23:33:48 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfIZ-00057F-QE for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:33:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TlaulgggJ1UYomGkGAhVex0DHpTSa7AVrgYQKWm5mO8=; b=NZ4lPl4RpvZ/x6nhL3XkQVfyb6
 fzhsKqeqFXCziP54SE9ngoHoEsaQlw+OSjW1KVIKSN0BejwyPWZOzSlhwFBR3w3v+Zv5e5YkjQgRG
 49bGBvDEap1gCYucCyEG0TVg84HaN3pr5W6U5li4M6G+tdJX0O7jB0MGA/4TU9L036YA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=TlaulgggJ1UYomGkGAhVex0DHpTSa7AVrgYQKWm5mO8=; b=PK14fzGZOWm7DasECBqdetBKZW
 3UmozOJNmuXlY90XBCRTJpQFrH1EyVl5VmhX8/R3shfD0ltZwv79tIpJuxk729tZXerL1nUQYZPlr
 zB5iEEfDwpv591UhibyiwSMWCXNostWWTd71rbmzhrglhp7sF8A4+1X1nXePorYZJHms=;
Received: from esa6.hgst.iphmx.com ([216.71.154.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfIX-0001TN-4c for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:33:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680132824; x=1711668824;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=2XfkCsgwrNyUw6t3bN5epvi5ctQPl/PkBM51tAE2KI4=;
 b=ZSQatRn2KGGL4NWp3rFwCxDH86t/wiyeGFPrUfL7vVosjvcaIcVsv09Y
 MV9MY2gvnkFJKNvmj4V8eFtuwg+PvunapQrPgJg7P3O6S5gQPlSRw7bht
 jDlhgUxK5fHg2wo/w8C891MiF0mFvM4c0Coplxz/Ij3Rd19nTA6VoA04U
 Z6raZqoHm48hoEp3Eh/42A9/+9gEpfVZO3WmP4KSOkY+eWTDdki+Vln0Q
 Ee67ILIKgQXx+YFIOIVvEUcu62GFXIMjltQ8NyepnExZy7340ErTf4jX0
 gmO6IN1nyVFwZkUtWdTCU7jPEkfKnMiqJXgb15AqlMiMDxxuKLdakIHoD g==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226828582"
Received: from h199-255-45-14.hgst.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:33:39 +0800
IronPort-SDR: cvVyTfbfGiNKrcVG909sMp7mAYe5PXVj1lX9Vy2FiCnhLn2hpgl9CXD7qk9qNXpls2HZ92uNOA
 cADR89wlqpFAR63+036ojA1/ggQV8rFHasa+Afb7lQtYvngaKB4YHcf7ewO9Bt+9ba0xImIh5N
 wWMTCMzeI2EBeDuy3uDp/sQKqJJrvg1QLaSHZLnomBnzRJp/sJ5d+eJQ8KC7CX+39+aElSj7Je
 r9E8U1PKLjXHI7H4k3b7wskMeNxnpdI/++zsEcmflH97XKYxRsW7ggEUwtL8z+YeB+of9F0WKU
 oCs=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:49:48 -0700
IronPort-SDR: Gv5lNkAVrVVc5Bygzp7b+8VQ9PF99BRfvEjYy+IXj7WWl2uJz37VNjtJ5dYaZBuJHmjUrROAsO
 dp+nCHUzdaRWJK6pXA7vrxXm2cyl80TyY+4vardZLzdKidiSUFrTMTPcVT90WQZ36zmicFMFg/
 30nbJQCs3ljLqeWyba1M3sSy5gaX+5OiKhElupEPjdxuwb06bonNUzvRXzRJP9CpnnPQgrNlyw
 U1I5efjmwdqkaQPY7IUpo4rBwp14GITxlX8d/h0kvdHx/Jy3Nlcw44B5tttF2AxmwFPI0fVfuc
 nrc=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:33:39 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2tW0J1yz1RtVp
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:33:39 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680132818; x=1682724819; bh=2XfkCsgwrNyUw6t3bN5epvi5ctQPl/PkBM5
 1tAE2KI4=; b=iL0pOV79abCn58O3GsYB3incxhwrPGLAZGI7X+0lqN4SQQeDOnB
 qJb7+62q5R7L5egPIr3c45AiogLxHvyE6Lwb4X+ABQD60bWF9q9d86DXH9mxAomK
 Qu2grIxrBMnxXiUCC9/WpTKWZywUMM3/M8INQgOE8mZwBHEVU6DB5WsHrjzo+Sn/
 1V6s1+NZHPGuYuWBRZO8OSKChosO5Hy1NGf3W1IvjZty3XmVtff6p8XfHJ30Gaoh
 4l9C78DP+cf3gRR2ZbpYL8pkpDSGf79rjnBmncsC+8xVR7xVsQk0BA1KeF40WXti
 HbeBREtOM52B3AwqaTea8N47bzscm0SsNKg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id UbOfGQXrAdB6 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:33:38 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2tR3Vpwz1RtVm;
 Wed, 29 Mar 2023 16:33:35 -0700 (PDT)
Message-ID: <922e7921-c70c-cda6-aa5a-07ed44596d4b@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:33:34 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <faae16612c163bd6e65cf3d629b0a3c65666821b.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <faae16612c163bd6e65cf3d629b0a3c65666821b.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:05,
 Johannes Thumshirn wrote: > The btrfs repair
 bio submission code uses bio_add_page() to add a page to > a newly created
 bio. bio_add_page() can fail, but the return value is > never [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.45 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfIX-0001TN-4c
Subject: Re: [Jfs-discussion] [PATCH 08/19] btrfs: repair: use
 __bio_add_page for adding single page
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

On 3/30/23 02:05, Johannes Thumshirn wrote:
> The btrfs repair bio submission code uses bio_add_page() to add a page to
> a newly created bio. bio_add_page() can fail, but the return value is
> never checked.
> 
> Use __bio_add_page() as adding a single page to a newly created bio is
> guaranteed to succeed.
> 
> This brings us a step closer to marking bio_add_page() as __must_check.
> 
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
