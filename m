Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 744726D21DD
	for <lists+jfs-discussion@lfdr.de>; Fri, 31 Mar 2023 15:58:05 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1piFGF-00072M-V4;
	Fri, 31 Mar 2023 13:57:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <p.raghav@samsung.com>) id 1piE5F-0000P4-F5
 for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 12:42:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=References:In-Reply-To:Content-Type:MIME-Version:
 Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=hcuGDJry3da1akfsGf4g2A9Xv80OXlUoG+ekZfXmh3U=; b=aG0ElYCra8dD2BFoYJ7OKJ8OPI
 wo9hQ7aE3cxfVtE7Pvd3dWmEej+87ky2XJCI0Tch9C/2qZ7F+xhbxX/CPbxPZU3+1vxgJ5C4fy+j6
 JE/0OmWX2W5AcONCiiXEAaS4aCrw2b248DDP/uBadH3B/rYU5q7PVxaxQ1IwI3uKhlO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=References:In-Reply-To:Content-Type:MIME-Version:Message-ID:Subject:CC:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=hcuGDJry3da1akfsGf4g2A9Xv80OXlUoG+ekZfXmh3U=; b=ixoM+nz7n9pj2h31esfJEzHwiy
 SdTPWDsBjiucAK9Niduy9x1u7mBC14O/IenZppFMCMMi2wUyymOJ3/4aQEL/Znu82E3I5TQYACMpG
 yWdUHr7ofRIJdULRKtjbSrtBFP54mwJRwEqs7T28M5kZB0mY92Nj+sYa7pRwvuMqB7To=;
Received: from mailout2.w1.samsung.com ([210.118.77.12])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1piE5C-000365-As for jfs-discussion@lists.sourceforge.net;
 Fri, 31 Mar 2023 12:42:20 +0000
Received: from eucas1p2.samsung.com (unknown [182.198.249.207])
 by mailout2.w1.samsung.com (KnoxPortal) with ESMTP id
 20230331122236euoutp0269851142cf8862a0ddf8087f89947f6a~RgHBqvSIj3240432404euoutp02V
 for <jfs-discussion@lists.sourceforge.net>;
 Fri, 31 Mar 2023 12:22:36 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.w1.samsung.com
 20230331122236euoutp0269851142cf8862a0ddf8087f89947f6a~RgHBqvSIj3240432404euoutp02V
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1680265356;
 bh=hcuGDJry3da1akfsGf4g2A9Xv80OXlUoG+ekZfXmh3U=;
 h=Date:From:To:CC:Subject:In-Reply-To:References:From;
 b=HkHTDHHmSA41uTSprLQ69X4AG+uE9Z/2Qulc4hPwEJHpUxIRnDwWYbofO4RGvMj3x
 c/RhO5eA3T0eCeZaw7sJr+T6y75Iw9HiNpQtT8V1UNf24OQlBLamqJYzfzQi1luQxI
 Ca4P/VK+caJtx0ZXjIPBggIVRC8jMzyr+bwbzcO0=
Received: from eusmges2new.samsung.com (unknown [203.254.199.244]) by
 eucas1p1.samsung.com (KnoxPortal) with ESMTP id
 20230331122235eucas1p1a9a510d4bc8face99a131261e67a3fe5~RgHBKw3Qm1948519485eucas1p10;
 Fri, 31 Mar 2023 12:22:35 +0000 (GMT)
Received: from eucas1p1.samsung.com ( [182.198.249.206]) by
 eusmges2new.samsung.com (EUCPMTA) with SMTP id CD.09.09966.B80D6246; Fri, 31
 Mar 2023 13:22:35 +0100 (BST)
Received: from eusmtrp2.samsung.com (unknown [182.198.249.139]) by
 eucas1p2.samsung.com (KnoxPortal) with ESMTPA id
 20230331122235eucas1p2208286ce210d9b01ea36a26bd3897b72~RgHAr05g82770927709eucas1p2v;
 Fri, 31 Mar 2023 12:22:35 +0000 (GMT)
Received: from eusmgms1.samsung.com (unknown [182.198.249.179]) by
 eusmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20230331122235eusmtrp26c22aae866cd012f4e7e50feaedb612a~RgHAqvH4p2795527955eusmtrp2U;
 Fri, 31 Mar 2023 12:22:35 +0000 (GMT)
X-AuditID: cbfec7f4-d39ff700000026ee-cd-6426d08b6c09
Received: from eusmtip2.samsung.com ( [203.254.199.222]) by
 eusmgms1.samsung.com (EUCPMTA) with SMTP id 82.16.08862.B80D6246; Fri, 31
 Mar 2023 13:22:35 +0100 (BST)
Received: from CAMSVWEXC02.scsc.local (unknown [106.1.227.72]) by
 eusmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20230331122235eusmtip2507df0accd5c684b8609aeab0cf06795~RgHAeTKQh2975929759eusmtip2b;
 Fri, 31 Mar 2023 12:22:35 +0000 (GMT)
Received: from localhost (106.110.32.140) by CAMSVWEXC02.scsc.local
 (2002:6a01:e348::6a01:e348) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Fri, 31 Mar 2023 13:22:34 +0100
Date: Fri, 31 Mar 2023 14:14:18 +0200
From: Pankaj Raghav <p.raghav@samsung.com>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
Message-ID: <20230331121418.mch3y43pbt3pahc5@blixen>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <56321f8ef1e70e9e541074593575b74d3e25ade2.1680108414.git.johannes.thumshirn@wdc.com>
X-Originating-IP: [106.110.32.140]
X-ClientProxiedBy: CAMSVWEXC01.scsc.local (2002:6a01:e347::6a01:e347) To
 CAMSVWEXC02.scsc.local (2002:6a01:e348::6a01:e348)
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOKsWRmVeSWpSXmKPExsWy7djPc7rdF9RSDI4907LYtm43u8Xqu/1s
 FidXP2azaG3/xmSx991sVosLPxqZLPYsmsRksXL1USaLix9bmSz+dt1jsnh6dRZQyS1ti0uP
 V7Bb7Nl7ksXi3pr/rBbt83cxWhya3Mxk0TW7lc3i9p0fzBYnbklbHF/+l83i9485bA5iHptX
 aHlcPlvqsWlVJ5vHpk+T2D12L/jM5LH7ZgObR2/zOzaP9/uusnms33KVxWPz6WqPz5vkPNoP
 dDMF8ERx2aSk5mSWpRbp2yVwZUy/dYa5YB1Lxd2pN9gaGI8xdzFycEgImEgs2u3RxcjFISSw
 glFiwcm5rBDOF0aJ843X2SCcz4wSUx8sZIHpeHbdEiK+nFFi66Q9LHBF2680MkI4WxglHm9Y
 wgjSwSKgKtF92QrEZBPQkmjsZO9i5OQQETCWuPJ9IVgvs8B9VolLR6aBlQsLhEqsWh8EUsML
 tKtzzltWCFtQ4uTMJywgNrOAjsSC3Z/YQMqZBaQllv/jAAlzCiRKnLkwC6xEQkBJomHzGSi7
 VuLUlltMIKskBP5xSkzZ844VIuEi0Ta/hRHCFpZ4dXwLO4QtI/F/53wmCLta4umN38wQzS2M
 Ev0717NBAsJaou9MDkSNo8T2xbcZIcJ8EjfeCkKcyScxadt0aEDzSnS0CUFUq0nsaNrKOIFR
 eRaSx2YheWwWwmMLGJlXMYqnlhbnpqcWG+WllusVJ+YWl+al6yXn525iBKbN0/+Of9nBuPzV
 R71DjEwcjIcYJTiYlUR4C41VU4R4UxIrq1KL8uOLSnNSiw8xSnOwKInzatueTBYSSE8sSc1O
 TS1ILYLJMnFwSjUwbZLscdAMvKSRfNrp6aT6Q89z9M4xi2vcLU7+sphJ/WPwP76uDyx6HgG5
 ey0CZn4TvMynYbrPwPjR7jCds86TVmoJeC6d28Po5rf55fYnyjwnL75Jux12NXhRju7rqLJt
 JmkJlhv9ti1i/Tr7VNvCGQcvTT4ufMA5QPFMUnCr4/1fsgcuFXF/U1TVFGfalcr9N2NxT6LO
 a//lp1iZ9j7y/fbCm2X/e62DgidFv05ZrjI1RLLpRZFpT84RRtup/LaVFhequqL3r2n2e3h0
 koTKj6zAFd+vtZnvPpD104HPlOtago60hUH1xqjPYbEaUryLerzl1ecr/Z5ledNt6+QJx6ra
 vcWv+XN86lIvYzVSYinOSDTUYi4qTgQA/sdKXgoEAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprGKsWRmVeSWpSXmKPExsVy+t/xe7rdF9RSDHbc5bDYtm43u8Xqu/1s
 FidXP2azaG3/xmSx991sVosLPxqZLPYsmsRksXL1USaLix9bmSz+dt1jsnh6dRZQyS1ti0uP
 V7Bb7Nl7ksXi3pr/rBbt83cxWhya3Mxk0TW7lc3i9p0fzBYnbklbHF/+l83i9485bA5iHptX
 aHlcPlvqsWlVJ5vHpk+T2D12L/jM5LH7ZgObR2/zOzaP9/uusnms33KVxWPz6WqPz5vkPNoP
 dDMF8ETp2RTll5akKmTkF5fYKkUbWhjpGVpa6BmZWOoZGpvHWhmZKunb2aSk5mSWpRbp2yXo
 ZUy/dYa5YB1Lxd2pN9gaGI8xdzFycEgImEg8u27ZxcjFISSwlFFi8uoV7F2MnEBxGYlPVz5C
 2cISf651sUEUfWSUuHjmGhOEs4VR4uCEJnaQSSwCqhLdl61ATDYBLYnGTrBeEQFjiSvfF7KA
 lDML3GeVWPVlDhNIjbBAqMSq9UEgNbxAN3TOecsKMXIKo0RL9ycmiISgxMmZT1hAbGYBHYkF
 uz+xgfQyC0hLLP/HARLmFEiUOHNhFgvEnUoSDZvPQNm1Ep//PmOcwCg8C8mkWUgmzUKYtICR
 eRWjSGppcW56brGhXnFibnFpXrpecn7uJkZgAtl27OfmHYzzXn3UO8TIxMF4iFGCg1lJhLfQ
 WDVFiDclsbIqtSg/vqg0J7X4EKMpMCAmMkuJJucDU1heSbyhmYGpoYmZpYGppZmxkjivZ0FH
 opBAemJJanZqakFqEUwfEwenVAPThPJ5nAGnFlnq/50p4F7+Pvm5oDzze7HQLufooAPH5YSu
 TNeOdTHPOjFt23a33qaZjzJm/1b75Ts/djdHyp89mxfafj105NXLezzVYhvmd3QbHZ6ouv2u
 yR63AjsrjoetMzlndmxd8ztcu7bB9s66aVwS4Yl9Z4tmssSGbJP7tjH41/SZt1aInVJv/dY/
 /ZlF5YYZMzZsk3R0dT8jbiytWKvSKhswbeNkHf/CTeaeB0Wesbo/WpOo3rbOU+RhA0fB64uX
 GGc12J0WClvwjPHutcvygmVR10oeO/atlasK5/G+nF/AIZYx21DOcFLpin6/NpYbyw40n7l4
 T/1HQWbnj8AZwSJujJWNXp9ifK2UWIozEg21mIuKEwEieVEeqQMAAA==
X-CMS-MailID: 20230331122235eucas1p2208286ce210d9b01ea36a26bd3897b72
X-Msg-Generator: CA
X-RootMTR: 20230331122235eucas1p2208286ce210d9b01ea36a26bd3897b72
X-EPHeader: CA
CMS-TYPE: 201P
X-CMS-RootMailID: 20230331122235eucas1p2208286ce210d9b01ea36a26bd3897b72
References: <cover.1680108414.git.johannes.thumshirn@wdc.com>
 <56321f8ef1e70e9e541074593575b74d3e25ade2.1680108414.git.johannes.thumshirn@wdc.com>
 <CGME20230331122235eucas1p2208286ce210d9b01ea36a26bd3897b72@eucas1p2.samsung.com>
X-Spam-Score: -5.9 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Mar 29, 2023 at 10:05:50AM -0700, Johannes Thumshirn
 wrote: > The buffer_head submission code uses bio_add_page() to add a page
 to a > newly created bio. bio_add_page() can fail, but the retur [...] 
 Content analysis details:   (-5.9 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [210.118.77.12 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [210.118.77.12 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.7 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1piE5C-000365-As
X-Mailman-Approved-At: Fri, 31 Mar 2023 13:57:45 +0000
Subject: Re: [Jfs-discussion] [PATCH 04/19] fs: buffer: use __bio_add_page
 to add single page to bio
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
Cc: Dave Kleikamp <shaggy@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Song Liu <song@kernel.org>, dm-devel@redhat.com,
 Christoph Hellwig <hch@lst.de>, Andreas Gruenbacher <agruenba@redhat.com>,
 Matthew Wilcox <willy@infradead.org>, cluster-devel@redhat.com,
 p.raghav@samsung.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Mike Snitzer <snitzer@kernel.org>, Ming Lei <ming.lei@redhat.com>,
 linux-raid@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>,
 Hannes Reinecke <hare@suse.de>, David Sterba <dsterba@suse.com>,
 Jens Axboe <axboe@kernel.dk>, linux-block@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, linux-mm@kvack.org,
 linux-fsdevel@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On Wed, Mar 29, 2023 at 10:05:50AM -0700, Johannes Thumshirn wrote:
> The buffer_head submission code uses bio_add_page() to add a page to a
> newly created bio. bio_add_page() can fail, but the return value is never
> checked.
> 
> Use __bio_add_page() as adding a single page to a newly created bio is
> guaranteed to succeed.
> 
> This brings us a step closer to marking bio_add_page() as __must_check.
> 
> Signed-off-by: Johannes Thumshirn <johannes.thumshirn@wdc.com>
> ---

Looks good,
Reviewed-by: Pankaj Raghav <p.raghav@samsung.com>


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
