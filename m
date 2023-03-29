Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFFE6CF71B
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:30:28 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfF5-0006Y3-K6;
	Wed, 29 Mar 2023 23:30:12 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfF2-0006Xw-Ag for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:30:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1Dmy00NSi1jBvY5axs+SWSHXNt2uzOUpyhLS1r8T8Ig=; b=JbdITITfCaFquanAQq7TwnqsjX
 hts/7cQ+ChWFYXwCxRM410TYWxvQh/luqFgEoH3qq8JKhS5L/RfTsL2xhSJsPfkRl8zFRXvopdhPg
 gvHBvCzgHOmfQmPh+dk81Btl25zbgRCrrXv6DYE0GOsmtOLO5fTzcgTUCRmSKOUKlzM8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1Dmy00NSi1jBvY5axs+SWSHXNt2uzOUpyhLS1r8T8Ig=; b=BAxDhbtnkxiKT1pvElW3FGiEIw
 P/o+IOyVY1++hrgC62hKiKowIqfLkxp/npLtCj+zRELrEkddBTrRSlRuE4/NsOoHm9tZrfdhQ0+Zz
 CASapml9hn8FqTlERhp8orVrtQF9YQnHRG4yoJMjbVQ+LvNREO+KHMLrecj2fpQJOOyA=;
Received: from esa3.hgst.iphmx.com ([216.71.153.141])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfEz-008uD7-VX for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:30:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680132605; x=1711668605;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=/Y/8nFwSzVjprTaZ9/Wyk96kEMW0qhqMfVVhpdupNbM=;
 b=W3dMzSHmjC7MsO5CpJPtLeB71Avt3ocqdyAwm4/m0sWf9asygcD19HCC
 Mxi3gAdALzlFosljoCGXGWyNCo9UKZxNMsqVO+WC7zKb+gayj2coXq8OM
 S+F/dXvX3n6ZvS3mJPHubsR/0f80gbIQ21BiEesazPgljrfI+AhGWmzQQ
 CrB/zAimoEqXJEViax+taPL9VuLkzPpUeHf/ASAYvgfuvXJhKOaZvLRHs
 UMM8jN8lVeoe5y31RtIpgKaVHnYEo+0h2+qrLqCTA0GStvOOtoSFDkbDo
 /ThXW+mP9l0K6Jx7rp/nwjsAEnDmqz8WHDyu7cj26yzd58f+eqXbWAmte g==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="231808395"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:30:00 +0800
IronPort-SDR: ON7UJH9tk0KEMFybe2hNRnTb4NvTF2PvNa9akUDAvUiGmil+H/1F3HU5GzIKJwp0+9kbf8GMJn
 BF6/a0yaU9mFGkaQAL5QG8gf47t3yqyY2Ft/qZ4jm1j+LldYmBzYv3gQAyLRrhdNWoHCa8yDRC
 6BpbqxMVnwwy3G7/22wF/L87hZ4Mh6EctnmVP3njsb3eJrR23t7YBuVKtW/VmOPgJFYGGdzlC9
 FaFcXLMRbPr3kZtFqNw62M+1mq1exPudBArwO/ma7aKfjNAfG74x9szhdgsIQo/s6qay6krQXI
 rN8=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 15:40:29 -0700
IronPort-SDR: B7C/EaOWtb2t0HMZysljUQHQ6neuYndNcHzry+QCGCuocl5YQtF1FFM/ooWusYd6J4rW/fu7SF
 WEzfGcNQaKhXfFYcnStvc6BIwLkML+SvpWI+dTpIDtN5YUY3eGZ2DXDGfwXzerO6JP2YVgAoS8
 rrViS+lYC8iZemh181MG7mdQ4CG+1chNmlRPvTNqUc3UG2mWJYhFlwli3hImGFbRaSLrIJDc6W
 8y9XTjHGWhhMm7nRN6e0gKWdjkhzU3UXjOHMiwrcFroJuMcOWiibGn6qJ/izkxLJwOHZkDT3a9
 JFE=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:30:00 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn2pJ0tM4z1RtVw
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:30:00 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680132599; x=1682724600; bh=/Y/8nFwSzVjprTaZ9/Wyk96kEMW0qhqMfVV
 hpdupNbM=; b=attI7Cb1FiJUfGooWKuUBF69nVtx8C0v6ZnYPU/aallwnH131e8
 koFS+onmiGvEVL5Rsy8MD8W84BqTFny7oW+UX3Q0EgmJyd7MjsjVGq5Fag+o00/p
 kBXyOu8rVI1MppDWnwv1nSsJjZgW3+f/JtpOKGfbDSqhjxMshlz8soCSdqYWdxyR
 mZbB9MxATuHT290hQKyTcBQsnd1Zs0bx71V0NrVJwmHkHSmV/TllIeaQKFtE+uS6
 +2zu64x2THYHjMlElnTspmwc+eMYbDW16URD8fpUN8smUWhlgc3H2/33t07voR+F
 ONOgbvSndu0231MHqn3BP6ebhDrfi+c2eNQ==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id bbvrzQL72sPd for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:29:59 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn2pD1Xt9z1RtVm;
 Wed, 29 Mar 2023 16:29:56 -0700 (PDT)
Message-ID: <ec7a0c67-a0b6-64d7-0f3e-dee9744daffc@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:29:55 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <87d0bf7d65cb7c64a0010524e5b39466f2b79870.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <87d0bf7d65cb7c64a0010524e5b39466f2b79870.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:05, Johannes Thumshirn wrote: > The drbd code
 only adds a single page to a newly created bio. So use > __bio_add_page()
 to add the page which is guaranteed to succeed in this > case. > > [...] 
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
X-Headers-End: 1phfEz-008uD7-VX
Subject: Re: [Jfs-discussion] [PATCH 02/19] drbd: use __bio_add_page to add
 page to bio
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

On 3/30/23 02:05, Johannes Thumshirn wrote:
> The drbd code only adds a single page to a newly created bio. So use
> __bio_add_page() to add the page which is guaranteed to succeed in this
> case.
> 
> This brings us closer to marking bio_add_page() as __must_check.
> 
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

With Matthew comment addressed,

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>

-- 
Damien Le Moal
Western Digital Research



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
