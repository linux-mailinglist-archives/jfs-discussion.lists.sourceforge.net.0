Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF46628290
	for <lists+jfs-discussion@lfdr.de>; Mon, 14 Nov 2022 15:30:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ouaTx-0006GM-W1;
	Mon, 14 Nov 2022 14:30:41 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <linkinjeon@kernel.org>) id 1ouXJ6-0000Xr-Dc;
 Mon, 14 Nov 2022 11:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Type:Cc:To:Subject:Message-ID:Date:From:
 References:In-Reply-To:MIME-Version:Sender:Reply-To:Content-Transfer-Encoding
 :Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BBQzIyZZF5rlbBw98y1P4gBlWGiyde5VKcuft9ToRAY=; b=dDVKbmVRxG2Sp3XOGLWwMuY0iT
 ywdQYj42h5dHK2gPPiqDm0TLLbdXB0ay9IuaFFxbqwsPTyOu9uesSVTBoApCBPVLEMYauhjTre9SE
 mTQp3ZNnAp3wrEJGt4JCllPOPmPWcxD70X5IEeolRIwgFuQTZCjgoa47v2p5QujpuS6Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Type:Cc:To:Subject:Message-ID:Date:From:References:In-Reply-To:
 MIME-Version:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=BBQzIyZZF5rlbBw98y1P4gBlWGiyde5VKcuft9ToRAY=; b=TpGQCsTsysILGvFiq7A2x0F7nS
 CgWyLMM2FI5qj9SCDQXATL2b1Unv95Hi89BGbrvd2rCxm+qS+E99O401S3F0zb/PTqH661VbypVeC
 SD5oGT5AuQjtqrpmpGmLX64r+cnd2dBin8m8ivZsBkW7O8OdhCGWwKhZ/dZ3AaEdbNb8=;
Received: from dfw.source.kernel.org ([139.178.84.217])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1ouXJ5-0002Qf-NS; Mon, 14 Nov 2022 11:07:16 +0000
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 516AA60FBF;
 Mon, 14 Nov 2022 11:07:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 21E41C433D6;
 Mon, 14 Nov 2022 11:07:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1668424030;
 bh=BBQzIyZZF5rlbBw98y1P4gBlWGiyde5VKcuft9ToRAY=;
 h=In-Reply-To:References:From:Date:Subject:To:Cc:From;
 b=A/TWlCEXkE5eooKrE2sEkXhKTjGb3+uPZCt/nWSjrS0c0XadKDRzxeuS7AKBK/yPt
 T1mF7ErfYbnVFTcUAffc67ZaVM1VXjUavuw9Jh8RXHmQC5lLEJP2rm8+f9O8GxbMlS
 glXGyBrF6446yghIoXpRloUtXLUSmptRJNSdEtSPc2DnqXKONFWlsmDPs5YwmYYtKa
 xquA2tJgsHbSwtj78bz+6VAJKxQ9YGL2dXhsWmZXZLAOq14M76EVTsaJnGJlR8Vdux
 5jT8m1WsqQkVlcD3jEadQzW3SVWoMOasaECwL1e1swUImgx7WnD0qQWyLAujTGgMk5
 bGdUN6zX46vGQ==
Received: by mail-oo1-f44.google.com with SMTP id
 v7-20020a4aa507000000b00496e843fdfeso1525585ook.7; 
 Mon, 14 Nov 2022 03:07:10 -0800 (PST)
X-Gm-Message-State: ANoB5pm0SPHwmVEKSRH2JF+8RIHK0uE2qK6mjGfCTJVmEGJEXpzdIHiJ
 qeyZIlQU+Xd+hDbxz1KUZshbB55WNYKX/DUNuxU=
X-Google-Smtp-Source: AA0mqf7wDQwPA3pTOSPVjMBQXValCRkcy0eZQuDEsbG8KDjXL393R4wvF7iCYv59B/mzoOk4MhJydooBoEVZepSGpZ0=
X-Received: by 2002:a4a:b582:0:b0:49d:d7ad:4195 with SMTP id
 t2-20020a4ab582000000b0049dd7ad4195mr5275628ooo.44.1668424029332; Mon, 14 Nov
 2022 03:07:09 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:a05:6839:1a4e:0:0:0:0 with HTTP; Mon, 14 Nov 2022 03:07:08
 -0800 (PST)
In-Reply-To: <20221113162902.883850-2-hch@lst.de>
References: <20221113162902.883850-1-hch@lst.de>
 <20221113162902.883850-2-hch@lst.de>
From: Namjae Jeon <linkinjeon@kernel.org>
Date: Mon, 14 Nov 2022 20:07:08 +0900
X-Gmail-Original-Message-ID: <CAKYAXd97CmO5AvKPzziaKiqtUManSgXzFQatynGojTNzaBk9gw@mail.gmail.com>
Message-ID: <CAKYAXd97CmO5AvKPzziaKiqtUManSgXzFQatynGojTNzaBk9gw@mail.gmail.com>
To: Christoph Hellwig <hch@lst.de>
X-Spam-Score: -5.2 (-----)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  2022-11-14 1:28 GMT+09:00, Christoph Hellwig <hch@lst.de>:
 > ->writepage is a very inefficient method to write back data, and only >
 used through write_cache_pages or a a fallback when no ->migrate_fo [...]
 Content analysis details:   (-5.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [139.178.84.217 listed in list.dnswl.org]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ouXJ5-0002Qf-NS
X-Mailman-Approved-At: Mon, 14 Nov 2022 14:30:40 +0000
Subject: Re: [Jfs-discussion] [PATCH 1/9] extfat: remove ->writepage
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
 linux-ext4@vger.kernel.org, Bob Copeland <me@bobcopeland.com>,
 linux-mm@kvack.org, Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 Jan Kara <jack@suse.com>, linux-fsdevel@vger.kernel.org,
 Sungjong Seo <sj1557.seo@samsung.com>, linux-karma-devel@lists.sourceforge.net,
 OGAWA Hirofumi <hirofumi@mail.parknet.co.jp>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

2022-11-14 1:28 GMT+09:00, Christoph Hellwig <hch@lst.de>:
> ->writepage is a very inefficient method to write back data, and only
> used through write_cache_pages or a a fallback when no ->migrate_folio
> method is present.
>
> Set ->migrate_folio to the generic buffer_head based helper, and remove
> the ->writepage implementation.
>
> Signed-off-by: Christoph Hellwig <hch@lst.de>
Acked-by: Namjae Jeon <linkinjeon@kernel.org>

Thanks!


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
