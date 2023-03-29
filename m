Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FEC6CF7DE
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:59:04 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfgl-0006uG-0S;
	Wed, 29 Mar 2023 23:58:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfgj-0006uA-TY for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=F5o74pGkof5L83tXVvBV5KpnClJIqJsUfyGloBtTHts=; b=aVoTcvUhA5C+Y3Gd7CCcV/DGd4
 HK2NZIzFOOiRoU+diC3RH2mlA4GpYVZBwxxW0KFo/s80SBtDCVyP7jPTffQbiCsfYlKbY7Mm1ds6d
 XqR8ZnhDaFuPw5fOEQIrbHzrSDKdLDWSn7tC1872LlIQU5JiDpqQhLEJRGZeXMmN/CdA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=F5o74pGkof5L83tXVvBV5KpnClJIqJsUfyGloBtTHts=; b=TIlcPBPS/d3MrnS9XIuUK0D7Xl
 yAy10WgJ8zeiFPlOgiOJxabk/qCgMGesPWIzkmb1R+hpPMBckQxwQRlWxlEKwfILGiqtpsbxZcDG7
 5acEOd79wzZsnHd/8cpl/zCmaNQHrqdEfMawhu0fPG9kibrPOt0fR8HqWA5o6FL829yU=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfgk-0002Ji-4W for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:58:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680134325; x=1711670325;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=l3K4Kt/FO4iBIKq8VgAcGfFNIvXYccX/xQem9blms08=;
 b=kYShXUt87NyQ4EyHghySqrm3yAZZWjRaPcL8tNR8NsHCCxAbwK4QH4ZV
 0fDbXwT58hi1ZbEqmC6goliBIymdkyhk8eYp6/NYkfKVIH/T/Y/vKhsUD
 lolcr1nuI38sAalf8OFLejXgwe7vL+seP1OF4COFEsz2TBr1b9ty2Itz0
 BtEnEIFnicDV7XlBh4Ll+kuBSMU//ZuByTLXQFw6JSNkCbo3QOeZUc8d8
 zLqTYz8Kfj+KbgnkK08bD6mAvrKpKV85mLjbjRGenAcJFzGvnOoyCNNkI
 PAJphaG7ISR1QHiTihDuszEGtwaXJxjWJu4wM5elot02wtK4+qzX6Q5LR g==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226649500"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:58:40 +0800
IronPort-SDR: ggYm18Y5QXhFvd971TGcaRE+nkOAtH4Vq+Ha1IavqT60Bjuq+enEN8UADxmDrdly1wVC2bmCPo
 r5bKmFNNpNcLKDq5aLvcXOnsxWU/RrckXP7YCvM001O5J4Cuq+F1BxIFyLKHjg3nsG5znw6p7K
 /lbwj0aaeD5NKYNoqceFcTAhAkitKhSBNU33/ya7+V2URaKyoARY4QyNKiU2sO513D2d2vG+r2
 BGsiSy5eANsP1lGWf4Z1Z0IXYgNxlYUVBVY1K5U18u19vvzCF2GVfLgsWZml9lXdF/nwE2u3D8
 iSc=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:09:08 -0700
IronPort-SDR: b0EG3r00zD4lFNm81HKTZqPu8AqtVsbVBLpX6AjH6Vkxg5k7zecXchgltrXrbFTqCzL5hpPB+4
 PuNmiNoCrADJuK6M8WyYPlYoQsxr8hbZhHtGtJCvbkeFXPqAw3jJ/KNjJTuCUyCuJjlwXo8OqG
 k5R8DTdaaOZNPMfqc6io3tn9i1PcbtsH8RNWJ5orJh8z2W9JrJZnwuUcWd4WCRLlUd2YQFl3VA
 TVIrOBKy68Hq+pZfh/49k4Wy5dUPVBQ6+lMhAyGC4fqm3CCEDOCI6L+pXdMAKuBO87zU2BLXwN
 UG4=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:58:41 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn3RN0Vgbz1RtVn
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:58:39 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680134319; x=1682726320; bh=l3K4Kt/FO4iBIKq8VgAcGfFNIvXYccX/xQe
 m9blms08=; b=Z/xEynILGjmaBwHeY3zVoiULWBo3e30fvx6iPr3Zx6Wj7JD/AeL
 AlMf5sdtT16U+2fy8eU1VAKFPpBudi6kurLPAGIzKE9drC6EeQeqgjCFT9E4ojVy
 TQQB5cTsm8u17203jJLawINrINsD7UcNkKFsfaNP554pst6fe7CQNFLH/4gnZpHW
 cIc0ZPn8qBqY/PUa8EZzINk2DyDa38pZrA2IHJhRPZg8wTakQ8CRn+WKb8IUyz/t
 SBylBZXjhtrWwGcmAPksFGN22jMLMsZOAJeZ+IGqQ1Xj5XyaZ0SgGrhmF2I15zcu
 VVtWA4JMjP+QyIuov+vQWELqF/Tx0+aFYxg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id tSNtvE4zKaFP for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:58:39 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn3RJ0pDLz1RtVm;
 Wed, 29 Mar 2023 16:58:35 -0700 (PDT)
Message-ID: <e088f7f1-827e-f0e5-4fc0-df0dcefbb873@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:58:35 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <350bd9c62ce575267a2b38625ab767c332429bc1.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <350bd9c62ce575267a2b38625ab767c332429bc1.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:06, Johannes Thumshirn wrote: > Now that all
 users of bio_add_page check for the return value, mark > bio_add_page as
 __must_check. > > Signed-off-by: Johannes Thumshirn <johannes.thumsh [...]
 Content analysis details:   (-4.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -2.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfgk-0002Ji-4W
Subject: Re: [Jfs-discussion] [PATCH 19/19] block: mark bio_add_page as
 __must_check
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
> Now that all users of bio_add_page check for the return value, mark
> bio_add_page as __must_check.
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
