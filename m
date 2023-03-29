Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 494796CF78D
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:38:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfN1-0006gA-7c;
	Wed, 29 Mar 2023 23:38:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfMz-0006g4-9l for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=cQsRXxiiPSqjZq6C8GDBgXQmjTf9hI1i4Lz0u05BQgg=; b=BAF4MmzaX5jN3didY3Pdt9PVOj
 83iCdUpMyHzX6WL3jU0plB3sVeQfVr7lgigna+ZiXQETK9m4O4MgkDWyRrDKrhc6E63ranOMJY9ME
 Z/CbTSiTl5+ceu++cuBfHgXkdpijK1xLe9MvgQ4jCG0WHsnqnDwkt9oOQpotWLJBE7d0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=cQsRXxiiPSqjZq6C8GDBgXQmjTf9hI1i4Lz0u05BQgg=; b=kU8+rSBlvHVYvs19xH0S5T6PyF
 SZoUodxgNXm5FbEmLltUQjvAwj/Q2t7U80ls3BR6NbITp2CL83JS2sjLjZEHWqybHoB8j3QKmQdh7
 UztjcIVrrJtisYXim5uY8fulacWcG1LWRBHLhoLOCvcajnHAUSCX5vcUdj8cKQIrmnPU=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfMz-0001hp-FF for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:38:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680133101; x=1711669101;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=trSlsKzGDIdMPkatCLLhm/IW4lDqvQLyF89j6Acxt+c=;
 b=NUpkeyYLud5EKRrbhInE9HMEBcsH9z8/j3KPwPb2jBkLiNk4QREulrua
 1W0e/yRdibpi2bsEQ0nctkZ/MDPD4oFHlX+OhYdXC9FBbpnWCYgRLRfaV
 fcDBqoy4SAXn4afOC2htj/w3RdLqmIVwL0uQ1JMco7Lx3AUjI8t/E1b7s
 Rga434KeSPdY8aKI+RrmWggKS9NvnbJ8hwrZqlPpTwUY/dIVE8w15TOLe
 sgToz099A0s4N2uSJS8c0ZbPqKoF3L7IT/NdsUYwWNoSJtrwZD3IQlk0F
 z8faXQMbMLIncAJwXfv6wCIg3ZBfpWHB+scxXYvsuu0w9nvOg/LMzOMDd g==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226648451"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:38:15 +0800
IronPort-SDR: xz/FAPDl09xjeZ2zr7hamNPT9PghxFveBMxt0S3enlcKdFytqnvYlBRmpEYYc+vUxvEjpK68BP
 ab2oKz1HfICszmBesNGVyPT1jQyhT7pHaC1rIV3ephTB/p9NDrQlBFP9lcyeL5u+gYafvh/TzO
 TmEUo2LvQuoNI0Yll5fm8mPlzVyQubQQibXX8prTlmyhQTBmtwOrT5ZkDLlTjZYIXdLD3lOwMt
 vD4FKp5PCg1fd/NkD+S5578JXC7ROwznsGX1dmgwp8U7GMjgyD/AK6HuUUBOvJmP2RARXl0cWR
 mCg=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:54:24 -0700
IronPort-SDR: tnZuTz6ePnhGLQvGaff7LOoUvURHIwDDWq7v9PnacgAdRkFLNYfA34DYiV3st/hjSogId6IFSV
 KVLvHfjGVnrtoWv2G9SIySSKiaet/d6S0d4r+uqlE0NLYyzJI/4zjQ8zVQj+AqdroKm6YAEzaL
 iF/ClFqAr4giVXnq5HJ/Yqse3BWEm2HbCn1OiSrL3d/f8VhQPbnqiMYPmaGUfM3BPWMtpmv/rt
 0/36Tj7Msyy6y856e/KLFii0WOyoVgc4euBV1xdS7MyGlAJFUcclLWneW8+Jnt2k5kwV2iq9YF
 BrY=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:38:16 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2zq293Dz1RtW5
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:38:15 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680133094; x=1682725095; bh=trSlsKzGDIdMPkatCLLhm/IW4lDqvQLyF89
 j6Acxt+c=; b=IwLM6OxTQ5LWzxAC4NcyXZ1dr2nvfgOzo9MYnLjHJuGsYvXhajL
 hlDO/OUe2nXi2knwvLTDrpf7NjCBruC2QzmIpB4JE9IyVsUJJAG/YLLsSyvDJh6t
 qxwxrHBhyTsmBCFnvPnxGjsvWVabw/lioMS9Htl+JJJqa4JvEgAHA2zECs+RUwul
 t+dnEFKBLZOQyEWCGPk1uA6JA048hYHWTFe/WWVJRogq+WSguIeHywIZ5y4oQkjK
 dU94SWBhAlGUm9MArYUGt90AtfkGpTivTX688Qa5D0tXrxVoC2lWcu6DZA0NboRO
 DWfvkb0SzT2gUKXzOI9on0y1QnPiBSGbu9w==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id U_0DZVMSX2gu for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:38:14 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2zl2Krzz1RtVm;
 Wed, 29 Mar 2023 16:38:11 -0700 (PDT)
Message-ID: <546786e3-79b3-f9d0-008c-23d2de7eb3de@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:38:10 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <76f5748e386870c034b46e919101a878b87a79bf.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <76f5748e386870c034b46e919101a878b87a79bf.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:06,
 Johannes Thumshirn wrote: > alloc_behind_master_bio()
 can possibly add multiple pages to a bio, but it > is not checking for the
 return value of bio_add_page() if adding really > suc [...] 
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
X-Headers-End: 1phfMz-0001hp-FF
Subject: Re: [Jfs-discussion] [PATCH 15/19] md: check for failure when
 adding pages in alloc_behind_master_bio
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
Cc: linux-raid@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 cluster-devel@redhat.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Song Liu <song@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, Mike Snitzer <snitzer@kernel.org>,
 jfs-discussion@lists.sourceforge.net, Matthew Wilcox <willy@infradead.org>,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 linux-mm@kvack.org, dm-devel@redhat.com, David Sterba <dsterba@suse.com>,
 Hannes Reinecke <hare@suse.de>, linux-fsdevel@vger.kernel.org,
 Christoph Hellwig <hch@lst.de>, linux-btrfs@vger.kernel.org,
 Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On 3/30/23 02:06, Johannes Thumshirn wrote:
> alloc_behind_master_bio() can possibly add multiple pages to a bio, but it
> is not checking for the return value of bio_add_page() if adding really
> succeeded.
> 
> Check if the page adding succeeded and if not bail out.
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
