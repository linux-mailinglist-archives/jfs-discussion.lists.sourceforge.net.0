Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8467A6CF76B
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:35:20 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfJr-0006h8-A0;
	Wed, 29 Mar 2023 23:35:07 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfJp-0006h2-Lv for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:35:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=m8DGghCmSgAemb4svVVGlv+++4fENJzFEd8XBTF9Do4=; b=RGB2sVAUiVVhaB+0ABjbFnk0CE
 71H+rhwMtjWY4So5ir0vUkzeQkH+d92xqnEBgEPa75aBdmrMONPn+TxRSn6tKM9wZPC5pgPHE37wn
 3ghCQ6cINIPbKrYEy2uINeYyd3fNxlkKpbkjEYmlPQxoxukZVT33lxjiHCmlmOOuEtAY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=m8DGghCmSgAemb4svVVGlv+++4fENJzFEd8XBTF9Do4=; b=E/x4EsQ8M52r08N5oZFgzLdfBm
 uYI9gulbRg4WPSOjCxYtu24ZeRQDXnxShCY08K3pckogDNeqxVR0K41+WIJpMxBaRW2IcNdrqD6Wj
 SL2UKJN1QuI4tpxHaR+4MuAlqw5f3C7BZaGKFJLO5NQcifd+IAf7mC5YXGpD353r6HSA=;
Received: from esa4.hgst.iphmx.com ([216.71.154.42])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfJp-008uMF-92 for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:35:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680132905; x=1711668905;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=eeHaifFAhmRPPQjhcQgNdDiqHkPhvUoOQEh9qZdcZBI=;
 b=dlDAPRu06Soq8KNMvwsFAKzXBlvDfGastZbsVkY1c2NGUy5ZPPkFN5ED
 vEjxgn9R0df74L8CcYwBuNf6xmUvW0PuPw+nb+7rBqs71+IutoZkSkwbM
 b+DUakzy749puNa31MjV2BElSMEfIWhZiygxQqK4jaoKqg8VWxUudoXoH
 CJgWhAXLSbEODbfHO7I7jTO9BIbU0wWDW3qQCnRPzbybt+v7bDWEmEsc7
 SbBp9F0AqEfi8lVfab8VJLIHqwgyAHkvVT0VETqv/UOuhll3zTBqs97xv
 YK6aBqSg2n5AhdZaDwEglsaa6nmtIkjF9vRMWvEnhML0INRfLcMB7QBqR Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="225113718"
Received: from uls-op-cesaip01.wdc.com (HELO uls-op-cesaep01.wdc.com)
 ([199.255.45.14])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:34:58 +0800
IronPort-SDR: hPPeFN6PCEJFMsmJMVr5SUJ27/O5xbUF9AllGBPapWTQpO/wYMd/D5FniTToWZiwYZDPGMhjyl
 CgV9fh/lZi/wruhQjdfYpofXwcloA7J16bhi6i8Lqv0ySwj6winLFUZw2sr7wwhnCJDgMWZdA2
 eGqwa2a4njccL7NKn+dsKqBb5Miz9eDCKda0Vl6zmuKHjXX0e4W30k9QOBbJxhpZ/Fv5NqmdZ/
 2cMpY/9Co4wv9hNEAdi1faKmfLqpnzIryixi56FGF64b3UFIPgDPIsKDYhMJYfQ9PLdGvQOxEs
 lEk=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep01.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:51:07 -0700
IronPort-SDR: Bv/3gvk0/iUIQ8Nn7ZaDD2NMn3+BG/Yt70ArJ9vEx/25/oW2odXtcei7ZG2o1X+aV1BbhEnvs4
 u1GDZj/lC35c7sNTxM6k8zAMSIfy8bEGtj42H4nVItekpYQFUhr17SsTnsZ2HfEzOXsAlnJP98
 YMrlo5Szv60JO8K5aL/YcDSKL2v393x1uJyqru/BIIxvjJjmhEIwn8ipQkiPg2k9c7yWTIbXWl
 j5+5SMrZ0af05wsJP3vWI4fOdg/GXTDN914JSVAKPoygXAStRDLwXFdYTrV4KiSfZOAEBKn5v2
 +dc=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:34:59 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2w23BtTz1RtW1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:34:58 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680132897; x=1682724898; bh=eeHaifFAhmRPPQjhcQgNdDiqHkPhvUoOQEh
 9qZdcZBI=; b=BXNDcLcmPPrVqL0uFQjErIzucxTlO2TIjyuUMny2mRGUWmQis2+
 Kp33jWSJF1g147Opo3rTneP3H7gwmNnEY+Up30cZQPxCibvRicdthlRAp7HwfA3s
 yZ2CR0pSt1DWieL+O+5noiTVyC18th0YJN7NxnEc9WA69UT3Aek5Gf1Ykc8KUD/E
 fCMhYTIDSrIhJoUmE5A9NvofEQI3CB/096YNkJxWerVVLA5+j1USgnk3t3REY1DB
 4txAUQ8raXYpQ2EQFHL2FPvKU/3Tn62ZAbsAG7vjHNq3VUhum4TuE7DV08/TeyBl
 eQW/1XF2djdTME7GQEAjbOj7c59rU1TGj7Q==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id h71mdlX9ogSH for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:34:57 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2vy4wThz1RtVm;
 Wed, 29 Mar 2023 16:34:54 -0700 (PDT)
Message-ID: <14a2f204-32a4-5108-560b-98c3dac2abfb@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:34:53 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <51e47d746d16221473851e06f86b5d90a904f41d.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <51e47d746d16221473851e06f86b5d90a904f41d.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:05,
 Johannes Thumshirn wrote: > The GFS superblock
 reading code uses bio_add_page() to add a page to a > newly created bio.
 bio_add_page() can fail, but the return value is never > check [...] 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.42 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfJp-008uMF-92
Subject: Re: [Jfs-discussion] [PATCH 11/19] gfs: use __bio_add_page for
 adding single page to bio
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
> The GFS superblock reading code uses bio_add_page() to add a page to a
> newly created bio. bio_add_page() can fail, but the return value is never
> checked.
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
