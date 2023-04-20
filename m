Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0ACFC6E8932
	for <lists+jfs-discussion@lfdr.de>; Thu, 20 Apr 2023 06:40:37 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ppM5f-0000tE-LD;
	Thu, 20 Apr 2023 04:40:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <song@kernel.org>) id 1ppM5c-0000t8-7p
 for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 04:40:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=e2kMjxLw00pT2+EDznrCtqL7waGns3hQPtXSEb5TvkE=; b=d6LZE9Ci6+cWhKRkQIBR8tHJcS
 RmKA7fhHCpoz3xTXuRBjgxSDy8RLO/r+1L8VTXDtL3IxYIK2hD97p1jodHnZfNhGY0s4gZO+eSh0X
 lK6KO/1KDjUKCm/KMb1rvgvM1fzm+Tn4DCZFezAudRHqgziI/3Gpp5S/IpDi81XnaPno=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=e2kMjxLw00pT2+EDznrCtqL7waGns3hQPtXSEb5TvkE=; b=fQYoV5Gkedlto7G1iWX2/wa6bG
 pKn7pleRoIE7jt5OAQhTNd0Cuweo93wS9phuvj+msUQBkz3QWU6UNH7CE59g0po7RujuE7psQvHjf
 BToy6q/9znhsBIpV9BLIRq1YDvwtPSJOd7/TbmxAP/gAFpNQkHq4nE7skLl4TpBbRbE4=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ppM5X-00DFze-BN for jfs-discussion@lists.sourceforge.net;
 Thu, 20 Apr 2023 04:40:12 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id A753964282
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Apr 2023 04:39:58 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A3FDC433AA
 for <jfs-discussion@lists.sourceforge.net>;
 Thu, 20 Apr 2023 04:39:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1681965598;
 bh=e2kMjxLw00pT2+EDznrCtqL7waGns3hQPtXSEb5TvkE=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=OZ9xegZ7ko8U1oo6qnsJk+3Pue6KDnodVJn0JAIQi6gTJIo4nyPvSZDS93d7D+vr6
 HIgyAvgojEeu4pt/P44ll5AqnZwiJHnbs6iMDCEqQSt7HwVSMWRrf4HqNSdo0BrgOs
 xe60XU9lC7sT4MIUWnPe+q4M56UlazdoGKbSZgDHhV2toutGfHKEiW2zHkBf82rtwg
 jZ1Ep03Bk3ysAlufjJiB3rHHPBUJanT/0EGQIb6R1EQpNOJRGLVX8GXOxyThgYx9dE
 LsZTtGjje+HVmrDl5lhNSNKWHgqslD5QxmtOpsTAaT5taPjWTrBab4k4khEjZkh+si
 KFUa9x5OVGXTA==
Received: by mail-lj1-f181.google.com with SMTP id h4so1422156ljb.2
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 19 Apr 2023 21:39:57 -0700 (PDT)
X-Gm-Message-State: AAQBX9fL1uKlDBRMChnVtvY43DP1lcWnIkbVrINN+nsVUHdoz5EXJdEC
 CO8SLaHOeMvlLKWhT+UKGnoJgTzFsfZWP5Sl4FY=
X-Google-Smtp-Source: AKy350brjGRI86LwVWGkzPXSEalUdCI4Td6YNPTTcnNRSEuyUW/eSnxVnpWQ0bvhloD205Vvr5DEOhYwggyQMmUmPfI=
X-Received: by 2002:a2e:a313:0:b0:2a8:928d:2e2e with SMTP id
 l19-20020a2ea313000000b002a8928d2e2emr2679277lje.5.1681965595968; Wed, 19 Apr
 2023 21:39:55 -0700 (PDT)
MIME-Version: 1.0
References: <20230419140929.5924-1-jth@kernel.org>
 <20230419140929.5924-18-jth@kernel.org>
In-Reply-To: <20230419140929.5924-18-jth@kernel.org>
From: Song Liu <song@kernel.org>
Date: Wed, 19 Apr 2023 21:39:44 -0700
X-Gmail-Original-Message-ID: <CAPhsuW7n5Gb68+br0Cf47J5wu25FtTzfBs0cSihg49f2tSY8jA@mail.gmail.com>
Message-ID: <CAPhsuW7n5Gb68+br0Cf47J5wu25FtTzfBs0cSihg49f2tSY8jA@mail.gmail.com>
To: Johannes Thumshirn <jth@kernel.org>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software, running on the system "util-spamd-2.v13.lw.sourceforge.com",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, Apr 19, 2023 at 7:11 AM Johannes Thumshirn <jth@kernel.org>
    wrote: > > From: Johannes Thumshirn <johannes.thumshirn@wdc.com> > > Check
    if adding pages to resync bio fails and if bail out. > [...] 
 
 Content analysis details:   (-5.2 points, 6.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
                             valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
                             author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
                             high trust
                             [139.178.84.217 listed in list.dnswl.org]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ppM5X-00DFze-BN
Subject: Re: [Jfs-discussion] [PATCH v3 17/19] md: raid1: check if adding
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
Cc: shaggy@kernel.org, jfs-discussion@lists.sourceforge.net, linux-mm@kvack.org,
 dm-devel@redhat.com, hch@lst.de, agruenba@redhat.com,
 Damien Le Moal <damien.lemoal@opensource.wdc.com>, willy@infradead.org,
 cluster-devel@redhat.com, kch@nvidia.com, snitzer@kernel.org,
 ming.lei@redhat.com, linux-block@vger.kernel.org, rpeterso@redhat.com,
 hare@suse.de, dsterba@suse.com, axboe@kernel.dk, linux-raid@vger.kernel.org,
 damien.lemoal@wdc.com, johannes.thumshirn@wdc.com,
 linux-fsdevel@vger.kernel.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

T24gV2VkLCBBcHIgMTksIDIwMjMgYXQgNzoxMeKAr0FNIEpvaGFubmVzIFRodW1zaGlybiA8anRo
QGtlcm5lbC5vcmc+IHdyb3RlOgo+Cj4gRnJvbTogSm9oYW5uZXMgVGh1bXNoaXJuIDxqb2hhbm5l
cy50aHVtc2hpcm5Ad2RjLmNvbT4KPgo+IENoZWNrIGlmIGFkZGluZyBwYWdlcyB0byByZXN5bmMg
YmlvIGZhaWxzIGFuZCBpZiBiYWlsIG91dC4KPgo+IEFzIHRoZSBjb21tZW50IGFib3ZlIHN1Z2dl
c3RzIHRoaXMgY2Fubm90IGhhcHBlbiwgV0FSTiBpZiBpdCBhY3R1YWxseQo+IGhhcHBlbnMuCj4K
PiBUaGlzIHdheSB3ZSBjYW4gbWFyayBiaW9fYWRkX3BhZ2VzIGFzIF9fbXVzdF9jaGVjay4KPgo+
IFNpZ25lZC1vZmYtYnk6IEpvaGFubmVzIFRodW1zaGlybiA8am9oYW5uZXMudGh1bXNoaXJuQHdk
Yy5jb20+Cj4gUmV2aWV3ZWQtYnk6IERhbWllbiBMZSBNb2FsIDxkYW1pZW4ubGVtb2FsQG9wZW5z
b3VyY2Uud2RjLmNvbT4KCkFja2VkLWJ5OiBTb25nIExpdSA8c29uZ0BrZXJuZWwub3JnPgoKVGhh
bmtzIQoKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpm
cy1kaXNjdXNzaW9uIG1haWxpbmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3Jn
ZS5uZXQKaHR0cHM6Ly9saXN0cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRp
c2N1c3Npb24K
