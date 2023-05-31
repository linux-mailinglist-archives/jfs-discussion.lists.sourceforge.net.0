Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B7CD271872F
	for <lists+jfs-discussion@lfdr.de>; Wed, 31 May 2023 18:18:06 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1q4OW6-000299-I1;
	Wed, 31 May 2023 16:17:42 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <axboe@kernel.dk>) id 1q4OW3-000292-0U
 for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 16:17:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Kr7AYf3i1eBygjzH5q6AjnbmzDMGTDydvzH6ggOcr8w=; b=OcE81UMkn9fK4dXy9jLTZYXjXS
 oETvPvk1Jfw/6wPZGdHlbtuB2wFQ0byaQGRbOTgIWgoSv5+hGnPS9n/NbWL/FWWXuPmYYyeSWRZiJ
 fpNpLP9mjfffGlvTByOhYxbKB2NhCWfd0o5+EfW5sRRJ7gbdJSeOK3xWObuUtv+SBf+U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:Date:Message-Id:
 Subject:References:In-Reply-To:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Kr7AYf3i1eBygjzH5q6AjnbmzDMGTDydvzH6ggOcr8w=; b=R+UhxcfQVQQfmlEXZUFgj+7swg
 tSrFQgZuT3KNm2RyneBoStrmw8WVE+wew9FVUnDGamQEDB6idP3HWP8fP2X3kzL9SDwWMglJkdzht
 gDFRF1fyrUma/bGGEY4KfxcOUE4QHnEYHQF9IFsq/7IgCJbIFkHMkG095y20T5AX9F+o=;
Received: from mail-qt1-f170.google.com ([209.85.160.170])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1q4OVu-0007SN-Hc for jfs-discussion@lists.sourceforge.net;
 Wed, 31 May 2023 16:17:39 +0000
Received: by mail-qt1-f170.google.com with SMTP id
 d75a77b69052e-3f7f53e8444so12528521cf.0
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 31 May 2023 09:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=kernel-dk.20221208.gappssmtp.com; s=20221208; t=1685549844; x=1688141844;
 h=content-transfer-encoding:mime-version:date:message-id:subject
 :references:in-reply-to:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Kr7AYf3i1eBygjzH5q6AjnbmzDMGTDydvzH6ggOcr8w=;
 b=1hY+utOWxH0xuFwrAfc7HaTEIYlEWrIVp14blKrWqUxN0AgKChaImQyVLAoLfj7osZ
 5Pf7TgQU5JijQ5b7IrFst3RhEiCC1GiYxMNisoj0IqepPbzzhA/c1m9mXb3JGSodXivA
 9v/gE88XhIWbXsKmnbeGI/ve5VueV+KVn3BKiJSgITQzL3KtsfeIUtf0ObJimBSQaD/T
 6EeNfTi5krTQDLUuesmWZnygsI4dcHZqxINqt0ZHj2Dw4LBUqfXSrAfLdbJSL4umOpoC
 OKgcyif9320Bb3j5qy3MU0cRFgrZxnnyMhlzsCNsoakXhAqTLJDue1jRjCih9NzRo9b8
 qxxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1685549844; x=1688141844;
 h=content-transfer-encoding:mime-version:date:message-id:subject
 :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=Kr7AYf3i1eBygjzH5q6AjnbmzDMGTDydvzH6ggOcr8w=;
 b=DJGmGjC6gxvLrcKw7ugAejuouu40izrU+uPn5LbQw7s/xjy6pJ9yEp3WpJqhWc+NXg
 yIx5QEJc+m1L19EFpImga3/FuN1pcQSguzNDf5kU82qF4oojjC5//tH8+wkybt3Fd+Ff
 FHpOynqWRF9HAf4HEjnQSAsaS9YbTOUsPQd2fIsAXVGqDIfWqVLIhXimvmysWZRuR5DF
 91exT11KpCeo7rRhYplrCufnGVxccjCkYaHCEJRW+Tgj4Th2Ot3U2ZE38mdpo1zwxxg0
 BIijP4+/5CDKPU6gyGBsxiUYBfZhUIFu+sk3f+3GRUNnXF/RWAwokQKjJmmmmkxFoh0n
 AqJQ==
X-Gm-Message-State: AC+VfDxd6EIzt8gbBTSbAY5ZER6ljAGCMHr6kYcBw/VIVI13q9y4EhDE
 +uogvD+UPbFNVXOSxVok7t8XzS+YFigx3Wv/O54=
X-Google-Smtp-Source: ACHHUZ4Vc5K9goUssaOAlBejpFmpFM1M2MosneBhWp7jmoz34Mcc3cGA6Lj397yP4Jgger0rhBRBog==
X-Received: by 2002:a05:6e02:1061:b0:32b:51df:26a0 with SMTP id
 q1-20020a056e02106100b0032b51df26a0mr1411548ilj.2.1685548219545; 
 Wed, 31 May 2023 08:50:19 -0700 (PDT)
Received: from [127.0.0.1] ([96.43.243.2]) by smtp.gmail.com with ESMTPSA id
 a4-20020a927f04000000b0033355fa5440sm3211579ild.37.2023.05.31.08.50.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 31 May 2023 08:50:18 -0700 (PDT)
From: Jens Axboe <axboe@kernel.dk>
To: Johannes Thumshirn <johannes.thumshirn@wdc.com>
In-Reply-To: <cover.1685532726.git.johannes.thumshirn@wdc.com>
References: <cover.1685532726.git.johannes.thumshirn@wdc.com>
Message-Id: <168554821814.183617.716542495633198655.b4-ty@kernel.dk>
Date: Wed, 31 May 2023 09:50:18 -0600
MIME-Version: 1.0
X-Mailer: b4 0.13-dev-00303
X-Spam-Score: -0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, 31 May 2023 04:50:23 -0700, Johannes Thumshirn wrote:
 > We have two functions for adding a page to a bio, __bio_add_page() which
 is > used to add a single page to a freshly created bio and bio [...] 
 Content analysis details:   (-0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.170 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.170 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1q4OVu-0007SN-Hc
Subject: Re: [Jfs-discussion] [PATCH v7 00/20] bio: check return values of
 bio_add_page
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
Cc: linux-raid@vger.kernel.org, Damien Le Moal <damien.lemoal@wdc.com>,
 cluster-devel@redhat.com, Chaitanya Kulkarni <kch@nvidia.com>,
 Andreas Gruenbacher <agruenba@redhat.com>, Song Liu <song@kernel.org>,
 Dave Kleikamp <shaggy@kernel.org>, Mike Snitzer <snitzer@kernel.org>,
 jfs-discussion@lists.sourceforge.net, Matthew Wilcox <willy@infradead.org>,
 Ming Lei <ming.lei@redhat.com>, linux-block@vger.kernel.org,
 linux-mm@kvack.org, dm-devel@redhat.com, Mikulas Patocka <mpatocka@redhat.com>,
 Hannes Reinecke <hare@suse.de>, linux-fsdevel@vger.kernel.org,
 gouha7@uniontech.com, Christoph Hellwig <hch@lst.de>,
 Bob Peterson <rpeterso@redhat.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net


On Wed, 31 May 2023 04:50:23 -0700, Johannes Thumshirn wrote:
> We have two functions for adding a page to a bio, __bio_add_page() which is
> used to add a single page to a freshly created bio and bio_add_page() which is
> used to add a page to an existing bio.
> 
> While __bio_add_page() is expected to succeed, bio_add_page() can fail.
> 
> This series converts the callers of bio_add_page() which can easily use
> __bio_add_page() to using it and checks the return of bio_add_page() for
> callers that don't work on a freshly created bio.
> 
> [...]

Applied, thanks!

[01/20] swap: use __bio_add_page to add page to bio
        commit: cb58bf91b138c1a8b18cca9503308789e26e3522
[02/20] drbd: use __bio_add_page to add page to bio
        commit: 8f11f79f193c935da617375ba5ea4e768a73a094
[03/20] dm: dm-zoned: use __bio_add_page for adding single metadata page
        commit: fc8ac3e539561aff1c0a255d701d9412d425373c
[04/20] fs: buffer: use __bio_add_page to add single page to bio
        commit: 741af75d4027b1229fc6e62f4e3c4378dfe04897
[05/20] md: use __bio_add_page to add single page
        commit: 3c383235c51dcd6198d37ac3ac06e2acad79f981
[06/20] md: raid5-log: use __bio_add_page to add single page
        commit: b0a2f17cad9d3fa564d67c543f5d19343401fefd
[07/20] md: raid5: use __bio_add_page to add single page to new bio
        commit: 6eea4ff8528d6a5b9f0eeb47992e48a8f44b5b8f
[08/20] jfs: logmgr: use __bio_add_page to add single page to bio
        commit: 2896db174ced7a800863223f9e74543b98271ba0
[09/20] gfs2: use __bio_add_page for adding single page to bio
        commit: effa7ddeeba782406c81b572791a142fbdaf6b05
[10/20] zonefs: use __bio_add_page for adding single page to bio
        commit: 0fa5b08cf6e17b0a64ffcc5894d8efe186691ab8
[11/20] zram: use __bio_add_page for adding single page to bio
        commit: 34848c910b911838e1e83e1370cb988b578c8860
[12/20] floppy: use __bio_add_page for adding single page to bio
        commit: 5225229b8fdfb3e65520c43547ecf9a737161c3f
[13/20] md: check for failure when adding pages in alloc_behind_master_bio
        commit: 6473bc325644b9c8473e6c92bfb520a68dce1e12
[14/20] md: raid1: use __bio_add_page for adding single page to bio
        commit: 2f9848178cfa4ac68a5b46e63e5163a09b8bd80f
[15/20] md: raid1: check if adding pages to resync bio fails
        commit: 33332be32fe91ff54ff326b3a1608973544e835a
[16/20] dm-crypt: use __bio_add_page to add single page to clone bio
        commit: 9be63ecfdd63f957b9ed25eaf85666d22a02d7a5
[17/20] block: mark bio_add_page as __must_check
        commit: 5b3e39c1cc8e1cf31a398830dd665eb15546b4f7
[18/20] block: add bio_add_folio_nofail
        commit: 42205551d1d43b1b42942fb7ef023cf954136cea
[19/20] fs: iomap: use bio_add_folio_nofail where possible
        commit: f31c58ab3ddaf64503d7988197602d7443d5be37
[20/20] block: mark bio_add_folio as __must_check
        commit: 9320744e4dbe10df6059b2b6531946c200a0ba3b

Best regards,
-- 
Jens Axboe





_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
