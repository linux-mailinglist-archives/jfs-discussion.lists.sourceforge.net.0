Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D91536CF7B6
	for <lists+jfs-discussion@lfdr.de>; Thu, 30 Mar 2023 01:50:07 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1phfY1-0005FD-5K;
	Wed, 29 Mar 2023 23:49:44 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <prvs=44543d287=damien.lemoal@opensource.wdc.com>)
 id 1phfXz-0005F5-Ih for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:49:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:In-Reply-To:
 From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=RIP7ZToVJ7YAQYVab9ZPXk+46JeGgPwccShxfEnezxo=; b=Kui44d/PWvR87TBvlsNLjbRO+O
 FSoUhbNceB95rJu7zvVUW3j9Y130p14gfz3F9bCrMq+SOtZyzwYBu8A9MMDnVW5zR2vq0QqHe8OfO
 fA3UscSCeCOU2EopYjY3MM33lTrkat/kCsXXjtdMg06pR3+uk7LixTVYr4gjJWaBIxTE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:From:References:Cc:To:
 Subject:MIME-Version:Date:Message-ID:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=RIP7ZToVJ7YAQYVab9ZPXk+46JeGgPwccShxfEnezxo=; b=dH9S52T5VsDPZ+ENqDCsCLBrV4
 BjNw3Lsxm9iDW/y6mJ2+z3NE1BeqI6MQj4y2OWc5GGKODq6YEoDbmZXmdfeHKURFx4r+olxgSPfU+
 m+M2298R5DEDq56WlzOQRj6mPD8Vh4e9FLa8dnbcmMJHeZTFuF0Ub3KP6Zvqo6p+qWbU=;
Received: from esa2.hgst.iphmx.com ([68.232.143.124])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1phfXx-00025V-SV for jfs-discussion@lists.sourceforge.net;
 Wed, 29 Mar 2023 23:49:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1680133781; x=1711669781;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=sWeg/sDXtlTL83A5IYwbAyKHpDQ9ojOEouG2K7X3x6k=;
 b=UeYCj8G2r4cVOA6Gsr6mMB/bNa57kIGycazFOCGF7W0Y1SsXHUMzzEm0
 MRTV9xyD9A3QDDuOsHRwR+sQj2qyXEzBconYLKDX78kYiVXsXS2oM/5sv
 UdbhQbLl9HZVTtuqt22pCjVr+tN+iv0N7NeZkQSM/0PTolgwBcNGrG5+R
 h+NhgMKBCxZmORSpJmheYMa7M7FhjIp+9WLlETnsOoCfE0IBhRwXTZDm0
 D3jHm04l00AvKeQgpLxDgt3x8JuWKDcVfFTa9S4rw/pPXxDbReUzjCqwJ
 u3+JhP23sZcQftisRG/FzRzGrFt8POICkfYL1aPExbDKERpEHvi00tSEl Q==;
X-IronPort-AV: E=Sophos;i="5.98,301,1673884800"; d="scan'208";a="331274622"
Received: from h199-255-45-15.hgst.com (HELO uls-op-cesaep02.wdc.com)
 ([199.255.45.15])
 by ob1.hgst.iphmx.com with ESMTP; 30 Mar 2023 07:49:35 +0800
IronPort-SDR: 7EbrvrY6o8jEL95LV+x3BaYRnXnD4gWAlTuJd27kFNYglZuiTBnI8SOj2TgZDZYXBFzVfyX8FQ
 SKksBLalNKmNbWs5At522kikRcJ5aI9Z0FVwxw4RPRCUDEc16VK4KpPG6NUEGcP8KEpHHJkUaV
 F8T+4YXBAMnNdEyOldkRb+CHgen3wNXf7jSw6MORxFsHxg5et11YYtLtlKpcRaGtBpMfakMneg
 3+m6oX9M+9x2GIz7Sbr4sc2uwASsg1vPitFzlhV/3ACRGa50v6RgUfsd3HqGF1Gmfrtu1vULeM
 tO0=
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
 by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:00:03 -0700
IronPort-SDR: 8RlQidRIrx0PFiR+cXoM1AbwIgYUVm9uqtHGlpMbM2qIWwCGfTH9Tu7KF9Fe87qoUNzpKTXeP7
 q3v4ZQQMtYf0G3HDL3P2tDwOcIGmV+zcnaYOJA9j/y1Vlfxy+kqP+4srieKcVUupVTdkuj2OTI
 cUGzrTpDna1zgE0rvI/PueqV+G+IKOHJgUVDFP8QMsNz5GJi4Cg5ERHmDYYKyhbOX80cWLdrsd
 rWNyhLWvQlBDH7LJKXdVG2LHzaJwohbAS7dGn7o0BwY44Ouf1Mzc6b5Thy4eNpJlUAQncsBQws
 6AA=
WDCIronportException: Internal
Received: from usg-ed-osssrv.wdc.com ([10.3.10.180])
 by uls-op-cesaip02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256;
 29 Mar 2023 16:49:36 -0700
Received: from usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTP id 4Pn3Dv0vw0z1RtVp
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:49:35 -0700 (PDT)
Authentication-Results: usg-ed-osssrv.wdc.com (amavisd-new); dkim=pass
 reason="pass (just generated, assumed good)"
 header.d=opensource.wdc.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=
 opensource.wdc.com; h=content-transfer-encoding:content-type
 :in-reply-to:organization:from:references:to:content-language
 :subject:user-agent:mime-version:date:message-id; s=dkim; t=
 1680133774; x=1682725775; bh=sWeg/sDXtlTL83A5IYwbAyKHpDQ9ojOEouG
 2K7X3x6k=; b=eaHQO/5YdYiXFsYm/m2wbzwCkEugBw14d0oKzXplSjZHTHWaRMM
 Rk0oZrO1z2yUn1Hja/n7bNucPqxcM0Cs6MfA2oa5h6VvS/F+VwOLHewkiZbvidXq
 gDXx1HIvRbO67fIYxbiBlENDBGzrGfFDypIQ83l3S9bnFvOFbwL3JmPEG4sD2OTO
 76DtyQ7WNA/kwrwtHL3kwg8jBFayqspuA7w9tm1p7sbrrGBUG1jymW1uO8NTGsZw
 4ntmN9Q3t7uWNfK3ZSSPuOWo7F29Q7SKKF1YRQBAS+5Jpz6sJVj7x+cnUiM+9wnB
 fQ+/Rw2jrr+amC1EN1ET3pZO7+qaPVJ+Smg==
X-Virus-Scanned: amavisd-new at usg-ed-osssrv.wdc.com
Received: from usg-ed-osssrv.wdc.com ([127.0.0.1])
 by usg-ed-osssrv.wdc.com (usg-ed-osssrv.wdc.com [127.0.0.1]) (amavisd-new,
 port 10026)
 with ESMTP id ZkmV7j_evv0Y for <jfs-discussion@lists.sourceforge.net>;
 Wed, 29 Mar 2023 16:49:34 -0700 (PDT)
Received: from [10.225.163.116] (unknown [10.225.163.116])
 by usg-ed-osssrv.wdc.com (Postfix) with ESMTPSA id 4Pn3Dq22DKz1RtVm;
 Wed, 29 Mar 2023 16:49:31 -0700 (PDT)
Message-ID: <3a0f0c92-63cb-3624-c2fe-049a76d1a64a@opensource.wdc.com>
Date: Thu, 30 Mar 2023 08:49:30 +0900
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Content-Language: en-US
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Jens Axboe <axboe@kernel.dk>
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <beea645603eccbb045ad9bb777e05a085b91808a.1680108414.git.johannes.thumshirn@wdc.com>
Organization: Western Digital Research
In-Reply-To: <beea645603eccbb045ad9bb777e05a085b91808a.1680108414.git.johannes.thumshirn@wdc.com>
X-Spam-Score: -2.5 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On 3/30/23 02:06, Johannes Thumshirn wrote: > Check if adding
 pages to clone bio fails and if bail out. Nope. The code retries with direct
 reclaim until it succeeds. Which is very suspicious... > > This way we can
 mark bio_add_pages as __must_check. > > Signed-off-by: Johannes Thumshirn
 <johannes.thumshirn@wdc.com> 
 Content analysis details:   (-2.5 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.143.124 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 NICE_REPLY_A           Looks like a legit reply (A)
X-Headers-End: 1phfXx-00025V-SV
Subject: Re: [Jfs-discussion] [PATCH 18/19] dm-crypt: check if adding pages
 to clone bio fails
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
> Check if adding pages to clone bio fails and if bail out.

Nope. The code retries with direct reclaim until it succeeds. Which is very
suspicious...

> 
> This way we can mark bio_add_pages as __must_check.
> 
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>

With the commit message fixed,

Reviewed-by: Damien Le Moal <damien.lemoal@opensource.wdc.com>


-- 
Damien Le Moal
Western Digital Research



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
