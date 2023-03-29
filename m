Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 644086CF793
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:39:00 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfNQ-0004vP-Kz;
	Wed, 29 Mar 2023 23:38:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfNP-0004vI-Qq for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:38:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=+5HwXhhrhHrQfkuI7Y7ovm+xrXzXoZBgfLszf1ePCZs=; b=QCbgznkf6vvB4t5hj/QGjGlmXz
 66YJMhxJhbNYqUxRAXriR1Rkdzazyk0VDN7uJR/WibJEQss5RF+bov32lQnYuKB8w9TU3dmtOzAmq
 /g1zTVGw55Bbg3Ky9Qe2FIgor9fzjCBge8Q5zBblhwOwMmFHAQodR735CTg9ckK1SHN4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=+5HwXhhrhHrQfkuI7Y7ovm+xrXzXoZBgfLszf1ePCZs=; b=Cub7d4ER682G8BuP/6bpvDAc/E
 wU+bdbZvP0Ujm0hUOuAH2BIPZrFp5BsHL8SQFv0EklBVozaZAXrc0GGTlgoxiUgc57Dp8Qq5f9B1M
 q3jfn8jovvDqVdhXYJg579tRIyR0tLjK7WNExD9TI6DPg2NmwFi3lD2uHRqEDSeSsi9s=;
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfNO-0001jH-7W for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:38:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680133126; x=1711669126;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=aODFcqxqHz5iuZ9R2+Bd+E8Nkx+iNXfbVHgy68x60n0=;
 b=HtRwsZn3lcjYXmrNtzKF7vPAvMzavsvWHjMAn2qnFXJlotKKNPnduYMJ
 4WY3kBp3IGrGLNaI+VKCwHGkPNNuRecZ+ARueMEMschNMu5WBIbUrFo5n
 XI4lYpLDw80MB1GymCEGSqul4VkSVq4Q6DBlKDC8I2Ux2HaI+if8uEZOG
 7eyIHYDiyo+hN1fiO8fOwUFIon9Mf/tfDlK9N+d+tpFQCDIlaN7LnI/SY
 6JyIifJP9e25Tz6/+L0IJZIy/cXYbAKiN8TE5nZlfX5yXCLK8uoWn0el0
 gYbh9ScCVZvanto6xMPN7GgeJRBZI6BCtmWGXnD4SKaxj8c76hwxGr8BJ A==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="226648476"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:38:40 +0800
IronPort-SDR: 9f1wKr8BVgu6N0oHd74CW6Lq3pH3mFF4BXqBcbTYCXEZuAmnSMfclNmntkQP6L642NcLuSoHz3
 huyT8mIOB6i3exCocZCt2tDWDe++98mYN942cGbbaVOWP6zbu15dCE7V8x+GTJBY14alDYe84b
 HGH96aZK0sXs5BgLGD34bvz26gz/6kAcQO9KI7wJ+/XmNC4wFxw8qZP1bV78SmUPsdc/Zqa7Cs
 MAXODK2Yo7HDulMwsV6rXEGH5A9RsImA+BT5cJRKknO55UYNrhFsMSbeKvNasL8mU1oW2M2M1J
 ltw=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:49:08 -0700
IronPort-SDR: McgvbMbWXOSTBlFvOykTlrF6nBFVGpZmrPsOMZx4IFinVMbhUGVrXO/m3eK0540nN5hX4CHtB1
 O2e8LViNZo48fgNm49MV4INnaF3k8EcZuZoZwLn8+qNKHi8aZ/VhlPNhRVggqDGwfVhLOE6prK
 bZ+cz3BaNYuF16OijmvQWyf90pJ/XpFmDEVGnGLLEkfOT+BY01ndMpXgjvz4T56H5phZtQwkzF
 liK7tqGmHwv2ktoDbzQHOLJLw/gKt+XvViYWLcgaR5HKh+6f6Bn1g6w8UTUqXtY8YH7GPHGxuM
 8Zs=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:38:41 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn30J2tdfz1RtVq
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:38:40 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680133119; x=1682725120; bh=aODFcqxqHz5iuZ9R2+Bd+E8Nkx+iNXfbVHg
 y68x60n0=; b=KBjlQKVFv+faQXsHdbboX8Xx9NxcmIm9AdBgDadiYuEI6iU44Gp
 jIKLTOiXkry8UpjbdYwauGh77NnsPrQSFZpCT7/P7YDoBzDw9zAFX+sbYXbItBD4
 Awy5kRAsBzpAxGEQt6/iFRAhFRIvGXb6QP2BKhHdWdA6t/8jyHKIjGtg0XDfA0ep
 9/S+K4tRXJIRFwdQ+UasHvlXj7W7pXISUVz/O/kQ1s0icT+btM6C83LvSU896SWN
 zX3mTR/5AXoqxmQ7Cm4R0QRAsxtuKFEiZ8wGyy7Y6iwGwfe3kKGL98CIKdDi6AJd
 jzR0sEF+xRcPBDw1yJoRYinpIPNolkCqMHw==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id COEryiLttFx0 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:38:39 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn30D5vG4z1RtVn;
 Wed, 29 Mar 2023 16:38:36 -0700 (PDT)
Message-ID: <84d3057f-58b3-b3da-a473-082806c4b5f2@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:38:35 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <8758569c543389604d8a6a9460de086246fabe89.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <8758569c543389604d8a6a9460de086246fabe89.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -4.5 (----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:06,
 Johannes Thumshirn wrote: > The sync request
 code uses bio_add_page() to add a page to a newly created bio. >
 bio_add_page()
 can fail, but the return value is never checked. > > Use [...] 
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
X-Headers-End: 1phfNO-0001jH-7W
Subject: Re: [Jfs-discussion] [PATCH 16/19] md: raid1: use __bio_add_page
 for adding single page to bio
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
> The sync request code uses bio_add_page() to add a page to a newly created bio.
> bio_add_page() can fail, but the return value is never checked.
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
