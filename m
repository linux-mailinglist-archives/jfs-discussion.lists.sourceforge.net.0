Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7436D6CF746
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:33:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfHw-0004ag-D6;
	Wed, 29 Mar 2023 23:33:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfHv-0004aa-Ou for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:33:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=j25xVus8NheocSkcjQw9AmlJ/7ysuPLFwjSpcM+3bT8=; b=IDGnysImTjsnFOGP71zyYvCO0l
 wVGpHoPaFz4iUUYksrYE+I3Ubu3JvBvo/KkmEq4v5m2cxzJMhmSpB4dmDaN7AZOPVTI0Y+HAnuZw9
 Djxvx69wpd6/IvyXCh+D5U5zQ9fJbFbxe6to8QhzMCW4kfxpPdMm035e/nSR9My8I1Ts=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=j25xVus8NheocSkcjQw9AmlJ/7ysuPLFwjSpcM+3bT8=; b=cwSzlhnwTvWXM1j4Y6TnGkkRfs
 gyszq5O+IWzKL9bSlCOmQwGzZQUpNyoZDaL2NL6YOnQ0zy5QqlOo0lGSJbcrnFa+5D7g0HzYTNSh2
 r3iKrAxFZ48jEEcBCF9Ev2tgeQSh36pXCNcSwSfdys/uol7QdtWtKiykK0oJeghW40sQ=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfHt-0001Sc-VK for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:33:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680132785; x=1711668785;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=APb6MZhJtx+BKA0st8ClsB22pp0y9Pqig7XgT6sLxmI=;
 b=TXH5CSvPmBbjDrlzz9EkNq6t23/fUwhiC8TJLsAiBlZQW0DxbJXifFeI
 Z1D5ip3eo4TUhFyVvLjFekDJ+csiIXdpyfpTFzkQVLPlfqIdCm6SjvIzv
 rXBob6qgOsTF/7GiHuGwjNQv6km+xVQsYJOOxNhEyc6SgjeLacHTL+WIY
 a3g7LpTn0K/o5pUI6bti2HSpBu+ldg7EFKMyF965YJs1QXMn+/ZUZjF33
 jInfbpL7JsY1oUOR6sxryRYrCkPurtAlnXM529JOMVZ2Uj1cXPhIiCohC
 alHXBscZZ6EewG2bqPkxqDenQxgRmyvkLWfNONew+jj8VOB4In+OMxFG/ g==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="231808629"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:33:00 +0800
IronPort-SDR: mP4jhOqVdEteKCH3q1s3MQc8sL5AkdCrFrN48XgzFCE4Kjd9pX7hiZv2HGG3XmWSj5WUATdy5f
 RArU7ke8qZzGnbAlYlwG6e2Cl71yzsuFix8z/T0nKbwa2k6Dn0jeQPMNZb0c4Fg+SvgYgPnexk
 o8M/gvEFpe5NnXQ8C32whI4p7OQ2X4zBWVYaM0N7JP7dsaEKr0ma2S+pK4V+AMHEpKOCAJTNbG
 CkMwDHpdlT08XWxb66clUQIqPBMuBIB1mew4KyHCldlHY0GChVp+osjzS9a7FAPDgIyhb7itZs
 Hh8=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:49:09 -0700
IronPort-SDR: io3xiNFFFso0OBFNzrozRxieEXXX9Ygl6XHtygSviHFsgvuMO2RWzd8LggajvvsW27Gkc/aUiK
 02R5p4JRFk51zXSqSJKS5kXsCwV4lfpe+X0Y+OP3LoNCdansDDNNDOm57gnFYJ+bwvESHzH9dc
 R/RpEpONV052hWkJsPCO3EPztnL1DDO4l9e1Q9nm9b7bc/c8pi+9O8DyanCCvVGpwlRN7IDn/J
 wgx2qD5tPA2/VLo4VhTQj4pmRyyNuHrmWv/2xP3IYjnz5AyY/CWACx5B2bQDNeeKxds3QoKQpn
 APM=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:33:00 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2sl6dTSz1RtW3
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:32:59 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680132779; x=1682724780; bh=APb6MZhJtx+BKA0st8ClsB22pp0y9Pqig7X
 gT6sLxmI=; b=EYPDnYeYBXvIPZU4yIKMtwumuioUV+FfuJ8fPXn7WoGbUKa7gK8
 7zyK1PX1ztxSUnflTcanHerZGll9o1DObBU+bLHw03SR356wtqMJKa09n0qcvgMS
 vZWj5aB/mrLRcKD+ZLaMWZavI1BMEp4d64WqsbKtIuhCcLZQRoyst2pdWD8Q3ya+
 ByQ8/RWystsxIVYmNeYNkH7soMStSvU7GBy5Z6O0BckSLdQn+7R88KD6YesLFa8q
 MYecYOCLxyWkIdz2hhL6x1SyTg5ktN5Fm733y5g6M9KOTaT0AtP36cbIMuLZhZ81
 iYFb15wzt+oKQjUeF0cNSTKYAFDWutLqRVQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id ohbE0-0GTQ9q for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:32:59 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2sh28h9z1RtVm;
 Wed, 29 Mar 2023 16:32:56 -0700 (PDT)
Message-ID: <93331778-cc12-5d26-34a5-7cd8834a0309@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:32:55 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <7ba6247aa9f7a7d6f73361386cc7df5395436c33.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <7ba6247aa9f7a7d6f73361386cc7df5395436c33.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:05, Johannes Thumshirn wrote: > The raid5-ppl
 submission code uses bio_add_page() to add a page to a > newly created bio.
 bio_add_page() can fail, but the return value is never > checked [...] 
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
X-Headers-End: 1phfHt-0001Sc-VK
Subject: Re: [Jfs-discussion] [PATCH 07/19] md: raid5: use __bio_add_page to
 add single page to new bio
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
> The raid5-ppl submission code uses bio_add_page() to add a page to a
> newly created bio. bio_add_page() can fail, but the return value is never
> checked. For adding consecutive pages, the return is actually checked and
> a new bio is allocated if adding the page fails.
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
