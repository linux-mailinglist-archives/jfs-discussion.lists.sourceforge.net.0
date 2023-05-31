Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B7497175F6
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 06:59:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4Dv3-00082V-9j;
	Wed, 31 May 2023 04:58:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <song@kernel.org>) id 1q4Dv1-00082P-Rh
 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 04:58:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Acpk3D0vIaaSq7knQOSMcE5Zt2GM0cFl+HSZygJWetU=; b=dgIm/vbhRra6sVukMo/8HbG0Mn
 xMFWsZXh6F6t1+qgGxY39BHznP6tRN6OJEVaS5jaxHnzEMiRUDz9if/xue/tmoIW6nB2Rb4Z+gAHT
 noL7JncAcF/RiutcFyg941BCTh8cR3munMDzImLjug/W7lGF/UxVDgOoxuVWIuLW3VjA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Acpk3D0vIaaSq7knQOSMcE5Zt2GM0cFl+HSZygJWetU=; b=aw8djJeZC3NHYzOgAnFpvfXswk
 3y1G82+jCi0cySOVCQf1DYN/9XZKLI7DAUAJbw+AzOzVapqaQPGmxw3swbZ/NSU7lJLYcrMUTm/6k
 FMVxHLS3u1iveieHrtwBTcjncWeQAXiiZxEopHq0nkCmqwLcQb7J/SrLBoTZnMmw1ObY=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1q4Duy-0077dT-3m for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 04:58:44 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E37E56364C
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 31 May 2023 04:58:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 54AE7C4339B
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 31 May 2023 04:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1685509113;
 bh=JBZOocixWDLgxHtO8LMBV75DV/IkdmBnKFJ284Ve6Ug=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=NPRYthHFV5Q6hvYrOD3SuDJ7bc3jcwirwiEVUlFtev6MSaaABYammq+Cs/uY0FO2+
 vhBtr9eYwJ3UusESuVNNxH4jzwv4bmGi3n2ga+aQwysq5IoCZanBHAUOmVZoDthS2v
 MWZC+Cyot1N6yNLStBFyiY8AoWj7Q2T9lkJ+ZDOiQg3jALxHDgsLMtawH+N3PT9ePK
 eyL6em9yX50zt7h0E72+ENupjn+mfQwoS/Fyd1YuLD7fn4ly4rOsAqedCh2PPoNIn6
 FKJKhjoLtemhKv4H2GPulhB7WA8ULvz23yGSyJJCGpRqNsUfydJII11BqJ6LnyRxu5
 u1yL2U5/JtQxQ==
Received: by mail-lf1-f52.google.com with SMTP id
 2adb3069b0e04-4f004cc54f4so6136017e87.3
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 30 May 2023 21:58:33 -0700 (PDT)
X-Gm-Message-State: AC+VfDzvRHDcHO39jlCo76d1yr/g1hrrWwoYkOE9iJadTU8zuMY8PxhX
 0JuGLJUF6Mu1mY96h9D66jkZof14c3nCY5gNcAU=
X-Google-Smtp-Source: ACHHUZ7XDiYWJcs+q0AXYFH83FpH+4XZaAkwQNLTh6knjyPLIO1LGIR2Y7lAqiqnrlvTJ8gMp4sK/wzuHD8SIBdPb68=
X-Received: by 2002:a2e:a28f:0:b0:2ad:9acb:4849 with SMTP id
 k15-20020a2ea28f000000b002ad9acb4849mr1778554lja.47.1685509111386; Tue, 30
 May 2023 21:58:31 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1685461490.git.johannes.thumshirn@wdc.com>
 <c60c6f46b70c96b528b6c4746918ea87c2a01473.1685461490.git.johannes.thumshirn@wdc.com>
 <20230531042502.GM32705@lst.de>
In-Reply-To: <20230531042502.GM32705@lst.de>
From: Song Liu <song@kernel.org>
Date: Tue, 30 May 2023 21:58:19 -0700
X-Gmail-Original-Message-ID: <CAPhsuW62vBccjUkCUmYr+OZSLgGozFzX4YyzP8OV+dvsLujCGg@mail.gmail.com>
Message-ID: <CAPhsuW62vBccjUkCUmYr+OZSLgGozFzX4YyzP8OV+dvsLujCGg@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
X-Spam-Score: -5.4 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, May 30, 2023 at 9:25 PM Christoph Hellwig <hch@lst.de>
    wrote: > > To me these look like __bio_add_page candidates, but I guess Song
    > preferred it this way? It'll add a bit pointless boilerp [...] 
 
 Content analysis details:   (-5.4 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1q4Duy-0077dT-3m
Subject: Re: [Jfs-discussion] [PATCH v6 15/20] md: raid1: check if adding
 pages to resync bio fails
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
Cc: Jens Axboe <axboe@kernel.dk>, linux-raid@vger.kernel.org,
 Damien Le Moal <damien.lemoal@wdc.com>, cluster-devel@redhat.com,
 Chaitanya Kulkarni <kch@nvidia.com>, Andreas Gruenbacher <agruenba@redhat.com>,
 Dave Kleikamp <shaggy@kernel.org>,
 Johannes Thumshirn <johannes.thumshirn@wdc.com>,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, gouhao@uniontech.com,
 Mike Snitzer <snitzer@kernel.org>, jfs-discussion@lists.sourceforge.net,
 Matthew Wilcox <willy@infradead.org>, Ming Lei <ming.lei@redhat.com>,
 linux-block@vger.kernel.org, linux-mm@kvack.org, dm-devel@redhat.com,
 Mikulas Patocka <mpatocka@redhat.com>, Hannes Reinecke <hare@suse.de>,
 linux-fsdevel@vger.kernel.org, Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gVHVlLCBNYXkgMzAsIDIwMjMgYXQgOToyNeKAr1BNIENocmlzdG9waCBIZWxsd2lnIDxoY2hA
bHN0LmRlPiB3cm90ZToKPgo+IFRvIG1lIHRoZXNlIGxvb2sgbGlrZSBfX2Jpb19hZGRfcGFnZSBj
YW5kaWRhdGVzLCBidXQgSSBndWVzcyBTb25nCj4gcHJlZmVycmVkIGl0IHRoaXMgd2F5PyAgSXQn
bGwgYWRkIGEgYml0IHBvaW50bGVzcyBib2lsZXJwbGF0ZSBjb2RlLAo+IGJ1dCBJJ20gb2sgd2l0
aCB0aGF0LgoKV2UgaGFkIHNvbWUgZGlzY3Vzc2lvbiBvbiB0aGlzIGluIHYyLCBhbmQgZGVjaWRl
ZCB0byBrZWVwIHRoZXNlCmFzc2VydC1saWtlIFdBUk5fT04oKS4KClRoYW5rcywKU29uZwoKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNz
aW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0
cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
