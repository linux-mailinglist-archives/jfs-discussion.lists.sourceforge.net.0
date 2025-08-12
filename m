Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
X-Original-To: lists+jfs-discussion@lfdr.de
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id D8DE8B21C27
	for <lists+jfs-discussion@lfdr.de>; Tue, 12 Aug 2025 06:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:In-Reply-To:MIME-Version:References:
	Message-ID:To:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xbdt94dVwi+AO3yXfBDrg6o8QCkqaiZIsJ1xEE/8cjc=; b=fgyOXQPqynvkZ8vw/3PPJtGalh
	PI4TX8x3thKgXX2VuJG3LrvR1o31C6bfPbkg84oMZn2eWUhCW1UWC83IcJZxgnwx1Yh6G7+av6EUB
	Mc2zaLUs7fkIUc2IwiBh1lHGJ163wRjZtUBmiCvXASAtjsmWeeyRseqiv1gVlPfAj8SE=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1ulgdV-0005z7-Uy;
	Tue, 12 Aug 2025 04:29:21 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <senozhatsky@chromium.org>) id 1ulgdU-0005z1-6W
 for jfs-discussion@lists.sourceforge.net;
 Tue, 12 Aug 2025 04:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UsF4i7owr2w64jophO+zO+eW0GN81ddWs4iypkKqJ00=; b=XhdCpbJ+irMJF+ZZQHw6SLyZGs
 7H7FmzDLBUStxMoor5n8569VhljHoCey/1OYoXWN31RUR83KFA4ISB59DFC0i3WAfkH1Oe7kj9E0Y
 NGtIdbjo7mMJrM+51VWuwELf3rLNeJNvvW5JW7K7hiGPlfI6njGgHbW0Ug2p1qN6UgSA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:Subject:Cc:To
 :From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UsF4i7owr2w64jophO+zO+eW0GN81ddWs4iypkKqJ00=; b=cDtsikol7JsoO8H9bxPTsz5a6F
 RhM0N4GJS6/kPKBxf3Ke7b+gAvwjI0v5wOCM3WOXcmBMb439DMoOstuDYuOgSRIXJqQdcWQt8wVv+
 dLGAIy4eSr6DjL+Vf7mHnto5zCcvx1EE9+9pQtd1lMn6WYP4QtbFbnRSxjS7TQ8IoJyE=;
Received: from mail-qt1-f176.google.com ([209.85.160.176])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ulgdT-00040m-Ph for jfs-discussion@lists.sourceforge.net;
 Tue, 12 Aug 2025 04:29:20 +0000
Received: by mail-qt1-f176.google.com with SMTP id
 d75a77b69052e-4b0db8ce2ceso25095181cf.1
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 11 Aug 2025 21:29:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=chromium.org; s=google; t=1754972954; x=1755577754;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
 bh=UsF4i7owr2w64jophO+zO+eW0GN81ddWs4iypkKqJ00=;
 b=BXLsjUnutpSu9AYLZcftfLYyuUHCmjLlY9gjTs92Hq3OZU531D3h828OLTag+sHHZe
 4DTyqHKv63DpBHZAfhMR0bS/OQ6/c36n1FHrwgrPAtsEEpkTIqVqiVMBcrUzd8YqA9Rg
 Hc8Rf0+e/0V9KXnQYmFzbfO4IQiPICcweXRec=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1754972954; x=1755577754;
 h=in-reply-to:content-disposition:mime-version:references:message-id
 :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
 :message-id:reply-to;
 bh=UsF4i7owr2w64jophO+zO+eW0GN81ddWs4iypkKqJ00=;
 b=ioa+46ZR6Hzhk0kldHy0kSiBH+7zm17oHbXLsVIQLI0HZvXFZal1MHJFpW91nSRS7v
 TILd6vB2Ni7MKYSGIS3CpFP3hcRkzim+PcNruZKquWYCsY3bqpY/OYPtwO/SWrqy+CSK
 5BhmBL223tW/eJ9pA60Clo7YzJJc+XwWxr3tINt69/IHjZCdM6niVXHi5DwlquKeAaFN
 t9wnFe2XVYbqY/fcxy2liSPBKfx0iQENCbUDmhvH66vVvhEEANzWVzcJ5K79c/Pe42Ei
 5K8EzD8/oXlRvz4t3qMh4OXSJI7bPjUq7vOPBA+OiuyxHKDS0vSS1JzGRUqFEi27rTkm
 eNzw==
X-Forwarded-Encrypted: i=1;
 AJvYcCUNC9A9vow+1mX7yO3bEDMPqFAvSzxTMCbKztz3KT7Lw0UYN4mvHsyAzUXzewLIcLIeuRy43xnuLkyyDRTF+g==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwZDaVM9RIaWX0mjUx+0RS8hHSihoTbOMw4h2ot8DnYjn73GSQ5
 7hEVFW8V54kDArxjh/LsIpqB2iIiPpw00REJdGdGuQ8RspCVQRnxW+Uskf1egK12yPfsamu7hVR
 +U9E=
X-Gm-Gg: ASbGnctkcu9hW3EajBCOfGws4In9cef2gC3d6gJJb0IuFih4eJgTt9H8RJ6lub7WIRE
 07hogMYNR/ncmn8QhPU2cfkyT9GXnj9w2uk1rJw7K6P9G9NsJDzygM5FhMSfQVe0iKGugWiCYdL
 Poup7GTqufnMFwtW1H1FFk4ZYRGQMgC0RvWcReb15snKxBNqMGcUnPZs9ce+GxBWoGYO8JDBPfF
 7iKYOm5M3HxcoqHY4mtb2ErovYHiXlNdv5jLyEdr2Ac0Z36010G1CR2Zhsyh6PVuNlMosb8ic/9
 U4NG3vt9qOA63EPVpN3JgZqx6xgRo5DA/I/hZxW74BpMdPUeOtdQj9C1NIhElL0idQreCpHOQFr
 xcYh01/DpMyTLsh+kvKnwttHQKQ==
X-Google-Smtp-Source: AGHT+IE0YyrVY5Vt8OKrl33IrgQwBQBekiXEdcW95C5mTt17WuM8Sondsrrkn0NdMV5pujBh12Fm4w==
X-Received: by 2002:a17:90b:2251:b0:31f:1a3e:fe31 with SMTP id
 98e67ed59e1d1-321c0a11aa9mr3103600a91.11.1754971120678; 
 Mon, 11 Aug 2025 20:58:40 -0700 (PDT)
Received: from google.com ([2401:fa00:8f:203:e529:c59e:30f9:11d3])
 by smtp.gmail.com with ESMTPSA id
 98e67ed59e1d1-321611d846esm16436888a91.8.2025.08.11.20.58.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 11 Aug 2025 20:58:40 -0700 (PDT)
Date: Tue, 12 Aug 2025 12:58:29 +0900
To: David Hildenbrand <david@redhat.com>
Message-ID: <lky6lmpq5hsflc4rcs2hev5i3gctvbrppysttnzo22r6oiryw4@edfre7sprwk5>
References: <20250811143949.1117439-1-david@redhat.com>
 <20250811143949.1117439-3-david@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250811143949.1117439-3-david@redhat.com>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On (25/08/11 16:39), David Hildenbrand wrote: > At this point
 MIGRATEPAGE_SUCCESS is misnamed for all folio users, > and now that we remove
 MIGRATEPAGE_UNMAP, it's really the only "success" > return v [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: chromium.org]
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.160.176 listed in wl.mailspike.net]
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - High trust sender
X-Headers-End: 1ulgdT-00040m-Ph
Subject: Re: [Jfs-discussion] [PATCH v1 2/2] treewide: remove
 MIGRATEPAGE_SUCCESS
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
From: Sergey Senozhatsky via Jfs-discussion
 <jfs-discussion@lists.sourceforge.net>
Reply-To: Sergey Senozhatsky <senozhatsky@chromium.org>
Cc: linux-aio@kvack.org, jfs-discussion@lists.sourceforge.net,
 Jan Kara <jack@suse.cz>, "Michael S. Tsirkin" <mst@redhat.com>,
 Jason Wang <jasowang@redhat.com>, linux-mm@kvack.org,
 Ying Huang <ying.huang@linux.alibaba.com>,
 Matthew Brost <matthew.brost@intel.com>,
 Xuan Zhuo <xuanzhuo@linux.alibaba.com>,
 Madhavan Srinivasan <maddy@linux.ibm.com>, Rakie Kim <rakie.kim@sk.com>,
 Sergey Senozhatsky <senozhatsky@chromium.org>,
 Michael Ellerman <mpe@ellerman.id.au>, Alistair Popple <apopple@nvidia.com>,
 Christophe Leroy <christophe.leroy@csgroup.eu>,
 Eugenio =?utf-8?B?UMOpcmV6?= <eperezma@redhat.com>, Zi Yan <ziy@nvidia.com>,
 Josef Bacik <josef@toxicpanda.com>, Gregory Price <gourry@gourry.net>,
 Byungchul Park <byungchul@sk.com>, Arnd Bergmann <arnd@arndb.de>,
 Dave Kleikamp <shaggy@kernel.org>, virtualization@lists.linux.dev,
 Nicholas Piggin <npiggin@gmail.com>,
 Jerrin Shaji George <jerrin.shaji-george@broadcom.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>, David Sterba <dsterba@suse.com>,
 Oscar Salvador <osalvador@suse.de>, Joshua Hahn <joshua.hahnjy@gmail.com>,
 Christian Brauner <brauner@kernel.org>, Chris Mason <clm@fb.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Muchun Song <muchun.song@linux.dev>, linux-kernel@vger.kernel.org,
 Minchan Kim <minchan@kernel.org>, Benjamin LaHaise <bcrl@kvack.org>,
 linux-fsdevel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 linuxppc-dev@lists.ozlabs.org, linux-btrfs@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net

On (25/08/11 16:39), David Hildenbrand wrote:
> At this point MIGRATEPAGE_SUCCESS is misnamed for all folio users,
> and now that we remove MIGRATEPAGE_UNMAP, it's really the only "success"
> return value that the code uses and expects.
> 
> Let's just get rid of MIGRATEPAGE_SUCCESS completely and just use "0"
> for success.
> 
> Signed-off-by: David Hildenbrand <david@redhat.com>

FWIW,
Acked-by: Sergey Senozhatsky <senozhatsky@chromium.org> [zsmalloc]


_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
