Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IOHQN1oPp2k0cwAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Tue, 03 Mar 2026 17:42:02 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 10E7B1F3FAF
	for <lists+jfs-discussion@lfdr.de>; Tue, 03 Mar 2026 17:42:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I9Y0EDSgNrzhG4WhmSsBXIBlXAe/9Vqp45EP2dMDtfc=; b=QFnkIBLuFSx0/Ngd5I8HXDrfkG
	FZg4HcjzbQzt24QCAeZg7froEHot2Sf/Gdj+UG561gqlLQ5dlzEt1AYB030BuELr301NJN6VC6/AZ
	QsfMjJl7m3Vc2YUxvULG9WudAV518vpcIbt3RcFsv7L/DOQxisjMEi6RNPuMXx5I51cU=;
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vxSoG-0004Wp-UZ;
	Tue, 03 Mar 2026 16:41:24 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <paul@paul-moore.com>) id 1vxSoF-0004Wi-Fk
 for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Mar 2026 16:41:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=vlM0HTuT+/Lu8GovscjfA3KZuqms5GnXWRMciKBvDhQ=; b=HtimL5fnITSfuy5W5RX9TVkmqZ
 LLcePsKZBn166mjojLOmHUP4fVuNzPja1iME7RC12nzeSmIAsAfxW8WriBILSpUOvfRGMa2/mZ8V5
 K39/2BxBbKXHjTgepk+VsOLva/trMtLexXaROjrEOtx9T3lT8GvYBSTKVIy1VCoI7RYU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=vlM0HTuT+/Lu8GovscjfA3KZuqms5GnXWRMciKBvDhQ=; b=O20mlND9ZNpDzCMHBpwnyYgo4g
 gmjJByYHZ8Q96c1QkZfDrcZSc/J0kPVY3NdUY1b8mFcdaNxG/u5dZF9NcTdryNDpsUDm6lEkBiysq
 JwDP7n9fkMn7BvRzFJ1onXlj1wPpbDD4ThbIXtNSIounMm5dy4p5aBOxDYp7tTqdU6Vk=;
Received: from mail-ot1-f45.google.com ([209.85.210.45])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vxSoF-00039F-1s for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Mar 2026 16:41:23 +0000
Received: by mail-ot1-f45.google.com with SMTP id
 46e09a7af769-7d4c3484268so4411533a34.0
 for <jfs-discussion@lists.sourceforge.net>;
 Tue, 03 Mar 2026 08:41:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772556072; cv=none;
 d=google.com; s=arc-20240605;
 b=UhGT/SgYwGpmqZvR355dhbwNx2nvovHwQCYEn9PHOBKSRV+3ioJ2vsk7IsiaeAqys0
 j7iKMPdQOPaKa2Qt0RJ7jzrYA00C+9bzwy0rhIgF+QFyLwcehqYCkftJ/VQI68wBORGb
 srwUDSI/m6XW4GfJmIeb/E3sZn9gjwj1T6PKw7DUqy4IfQsJA1mEhj/PWW4q1GylP2PC
 63Q+jItUZTT9umozakx4jI9EdURBaJbkm/MIAxcFVZ7yRvbd8/KePk1xJcoFeJC8Xrz7
 nDc8zgkDCBFMU3N6jcQEd0hCHww6jxC+ISCAWsjt2YTsYySMH7R5qgMf84402WkMFBhn
 0iWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=vlM0HTuT+/Lu8GovscjfA3KZuqms5GnXWRMciKBvDhQ=;
 fh=sJbzwUxfeGDGNAyxWtNMmET+cEXolsTMJmMcZ9W6FhA=;
 b=CKk/sedYWnh9NEvu+d1VG6HjKN9SdwKaKUg5jQTwIUFgmP6mX5NgJ2ayCYRIjjCS++
 wu85fI6BHZo7dHVA7HT9lL1kPOzZLeIPjZI1BPxGnr3zuect7UP9Mx1Yb+5YM/kdZ6Y3
 noP0bCONRRKA2mEW1JBmOgSmtwztMCXe2Zj3ycFJSLT3fsjeuUSdJNzZV/7po4/H6TEg
 0tR48ijgjfBidp4tfVyjw81vbWwLvloSTJK9U02m2ugegMwZoEUFPjYOMVYINBsEG/sh
 KZRx79X4xgkZ2HPJMBfPDUowBWXm2le8qfI26FYyUws06FqhLimmr2t7jISaZujM4U55
 XETg==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore.com; s=google; t=1772556072; x=1773160872;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=vlM0HTuT+/Lu8GovscjfA3KZuqms5GnXWRMciKBvDhQ=;
 b=DIqFClN5zcdY6+2YYeoIOY2eDMDbFMh/9XKuECa9qvow7WrY12uBt20A0guVkZrqGG
 iwByKWrXf6wHkwhwgcc7LUvrxjdKY7hftZ9vExP8bLxuDRHU6VEi1E7zYu4RjRxDdbAv
 Rr807Rsj6vg75ekAdAo9t4QcDuXxzKRdz/nW+OVId7KpIPtiT4euNULQfM1Cm2oxwGFp
 WwKbrFQndIjRALY4uIonCimBj2HBIfe/7AyG9yZ6/oBp9EaGmzERwnopDnFWxOPZ2EjX
 WKUyGbzkGvkXP2er6VbihEJmjzvs+qIkqwAMWVhroiwHHDp3He8k8mESRJvJrgaKNvBZ
 Qs0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772556072; x=1773160872;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=vlM0HTuT+/Lu8GovscjfA3KZuqms5GnXWRMciKBvDhQ=;
 b=XU+ZSs5K/tFQB/wi4L8WOYMUyzIpj4GPC0SQA89NTkxtBQM26ywS7ohQ5GZINTwECf
 MCVQyWGScaMz7gJJmNGok5ZbrQ6HUqymvqOdz3Lx2VPxK0wStyux1OZ+gxMSodeKEzbC
 jRo1Pspzm+xFBG4Tgy1mCmZTwOQI+qhsRDaE3n7UF5EdEqHimAU/5pEw9PDXOUWmvlkl
 /8zs4HJFTM4uIKy/zZrUDDpJduQTsTK1ofU5NCp4VAcaRHZFRQGqtfWC5qcPLwIkXIgT
 x/CPvkWBkAg+3RRm/IioP47NBVJCIr/lrYX8GuHpUHP8+AblYHacR9lZH7zEbP9inM8m
 2sxg==
X-Forwarded-Encrypted: i=1;
 AJvYcCVK1q2fzaNkQMzQ/ne0Al4HwV4jQxhzr5t/Ioo/gVGCrqlw4QD1F9QM0LXV56T93jnVxeWKkn/S26milrzajw==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YyfXuPiqW0y1DUn1lSG/tvjY+mmYvjBdGMTtLr+uNSsQBi3RruU
 7uovTMwH+e8XglSS16akixE1caF412v1FI7C0kKMXACLlc7aNyc7z5XBLNVDqrq7JdeupnwEvca
 HTifiOJExqk/oRwu9a8iwR5oqxmF4umSBvy5SJbyJPacAIBJ1d1gruA==
X-Gm-Gg: ATEYQzyCTLgJr6G+bXJBsa6PzftCPYBQp6AJE70uWSu5U17MihI0PW0fZ9lDZa/i9tg
 +taXBWTGRPRy31OLHbePhgINR1W9yogO2ggMWB2sPcEqUip5ACxq0vD5MSBWd4WKjbebcTuTQaP
 uvKajGHLbRYk9yJv/gw9Epvl1xSvCRgyxk38huKZodcZ6e1ljzXVyiATdeseSHO6UqH73GME2Lv
 JF4m4Ml/OyJ55/0tnpLevGYAbqqneU8WfVBZlKLMYPa0DnrUgB8RBoSn2a4AQfCwMyepPlC5R3V
 K5pjMhY=
X-Received: by 2002:a17:90b:4c12:b0:359:8d70:c4e6 with SMTP id
 98e67ed59e1d1-3598d70c5admr5344309a91.1.1772554667658; Tue, 03 Mar 2026
 08:17:47 -0800 (PST)
MIME-Version: 1.0
References: <20260302-iino-u64-v2-0-e5388800dae0@kernel.org>
 <20260302-iino-u64-v2-3-e5388800dae0@kernel.org>
 <CAHC9VhRnmBuXEKkUPQhJ_LDzcksjoAJL-ne6mFoJdR1hnDdzsg@mail.gmail.com>
 <7a0165fe39e82a1effd8cce5c2c4e82d6a42cb3a.camel@kernel.org>
 <CAHC9VhTyhnG7-ojnTnVdh_m1x=rKxw9YEH9g7Xp9m4F78aA5cA@mail.gmail.com>
 <add39953250a4a1b2fe2b09deb3373c2a7482b88.camel@kernel.org>
In-Reply-To: <add39953250a4a1b2fe2b09deb3373c2a7482b88.camel@kernel.org>
Date: Tue, 3 Mar 2026 11:17:34 -0500
X-Gm-Features: AaiRm503AvilRZsmzje3hsLVwZQN2UeIDoaYrT0wwtgoCj-_LcRzyWRvZdGrFAo
Message-ID: <CAHC9VhSb3nAsJBxhqitDVQw=J8hX1CJDe1xqL-JMjOA5J4tUkw@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Mar 3,
 2026 at 11:12 AM Jeff Layton <jlayton@kernel.org>
 wrote: > On Tue, 2026-03-03 at 11:03 -0500, Paul Moore wrote: > > On Tue,
 Mar 3, 2026 at 6:05 AM Jeff Layton <jlayton@kernel.org> wrote [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_DNSWL_BLOCKED  RBL: ADMINISTRATOR NOTICE: The query to DNSWL
 was blocked.  See
 http://wiki.apache.org/spamassassin/DnsBlocklists#DnsBlocklists-dnsbl-block
 for more information. [209.85.210.45 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_SIGNED             Message has a ARC signature
 0.0 ARC_VALID              Message has a valid ARC signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.45 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URI: paul-moore.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vxSoF-00039F-1s
Subject: Re: [Jfs-discussion] [PATCH v2 003/110] audit: widen ino fields to
 u64
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
From: Paul Moore via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Paul Moore <paul@paul-moore.com>
Cc: Latchesar Ionkov <lucho@ionkov.net>, nvdimm@lists.linux.dev,
 Paulo Alcantara <pc@manguebit.org>, "Darrick J. Wong" <djwong@kernel.org>,
 Anders Larsen <al@alarsen.net>, dri-devel@lists.freedesktop.org,
 linux-sctp@vger.kernel.org, linux-hams@vger.kernel.org,
 Sumit Semwal <sumit.semwal@linaro.org>, Mike Marshall <hubcap@omnibond.com>,
 linux-xfs@vger.kernel.org, Fan Wu <wufan@kernel.org>,
 Xin Long <lucien.xin@gmail.com>, ceph-devel@vger.kernel.org,
 James Morris <jmorris@namei.org>, Tyler Hicks <code@tyhicks.com>,
 Christoph Hellwig <hch@infradead.org>, devel@lists.orangefs.org,
 Shyam Prasad N <sprasad@microsoft.com>, Martin Schiller <ms@dev.tdt.de>,
 Jesper Dangaard Brouer <hawk@kernel.org>, Jan Harkes <jaharkes@cs.cmu.edu>,
 Willem de Bruijn <willemb@google.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>, linux-fscrypt@vger.kernel.org,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Ronnie Sahlberg <ronniesahlberg@gmail.com>,
 John Paul Adrian Glaubitz <glaubitz@physik.fu-berlin.de>,
 David Hildenbrand <david@kernel.org>, Eric Van Hensbergen <ericvh@kernel.org>,
 Zhihao Cheng <chengzhihao1@huawei.com>,
 Magnus Karlsson <magnus.karlsson@intel.com>,
 Christian Brauner <brauner@kernel.org>,
 Dmitry Kasatkin <dmitry.kasatkin@gmail.com>,
 Stephen Smalley <stephen.smalley.work@gmail.com>, linux-kernel@vger.kernel.org,
 Eric Paris <eparis@redhat.com>, linux-perf-users@vger.kernel.org,
 Chuck Lever <chuck.lever@oracle.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 Jiri Olsa <jolsa@kernel.org>, Jan Kara <jack@suse.com>,
 Alex Deucher <alexander.deucher@amd.com>, linux-media@vger.kernel.org,
 Trond Myklebust <trondmy@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Dave Kleikamp <shaggy@kernel.org>, Mimi Zohar <zohar@linux.ibm.com>,
 Oleg Nesterov <oleg@redhat.com>, Eric Dumazet <edumazet@google.com>,
 Johan Hedberg <johan.hedberg@gmail.com>, Simona Vetter <simona@ffwll.ch>,
 linux-cifs@vger.kernel.org, Kuniyuki Iwashima <kuniyu@google.com>,
 linux-nilfs@vger.kernel.org, John Fastabend <john.fastabend@gmail.com>,
 codalist@coda.cs.cmu.edu, Remi Denis-Courmont <courmisch@gmail.com>,
 linux-trace-kernel@vger.kernel.org, Olga Kornievskaia <okorniev@redhat.com>,
 Maciej Fijalkowski <maciej.fijalkowski@intel.com>,
 Yangtao Li <frank.li@vivo.com>, selinux@vger.kernel.org, v9fs@lists.linux.dev,
 linux-can@vger.kernel.org, linaro-mm-sig@lists.linaro.org,
 Casey Schaufler <casey@schaufler-ca.com>, netfs@lists.linux.dev,
 Jaegeuk Kim <jaegeuk@kernel.org>, fsverity@lists.linux.dev,
 "Theodore Y. Ts'o" <tytso@mit.edu>, Nicolas Pitre <nico@fluxnic.net>,
 Muchun Song <muchun.song@linux.dev>, Roberto Sassu <roberto.sassu@huawei.com>,
 "David S. Miller" <davem@davemloft.net>, Anna Schumaker <anna@kernel.org>,
 linux-integrity@vger.kernel.org,
 Marcelo Ricardo Leitner <marcelo.leitner@gmail.com>,
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
 Alex Markuze <amarkuze@redhat.com>, Martin Brandenburg <martin@omnibond.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 ocfs2-devel@lists.linux.dev, Alexei Starovoitov <ast@kernel.org>,
 linux-mtd@lists.infradead.org, amd-gfx@lists.freedesktop.org,
 Marc Dionne <marc.dionne@auristor.com>, Neal Cardwell <ncardwell@google.com>,
 linux-afs@lists.infradead.org, Ian Kent <raven@themaw.net>,
 Naohiro Aota <naohiro.aota@wdc.com>, Eric Biggers <ebiggers@kernel.org>,
 Daniel Borkmann <daniel@iogearbox.net>, Miklos Szeredi <miklos@szeredi.hu>,
 Matthew Wilcox <willy@infradead.org>, coda@cs.cmu.edu,
 Stanislav Fomichev <sdf@fomichev.me>, NeilBrown <neil@brown.name>,
 Ilya Dryomov <idryomov@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 jfs-discussion@lists.sourceforge.net, "Serge E. Hallyn" <serge@hallyn.com>,
 Amir Goldstein <amir73il@gmail.com>, James Clark <james.clark@linaro.org>,
 autofs@vger.kernel.org, Steven Rostedt <rostedt@goodmis.org>,
 Damien Le Moal <dlemoal@kernel.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>,
 Dan Williams <dan.j.williams@intel.com>, Oscar Salvador <osalvador@suse.de>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 linux-nfs@vger.kernel.org, linux-ext4@vger.kernel.org, linux-mm@kvack.org,
 samba-technical@lists.samba.org, Ondrej Mosnacek <omosnace@redhat.com>,
 Steve French <sfrench@samba.org>, netdev@vger.kernel.org,
 linux-fsdevel@vger.kernel.org, bpf@vger.kernel.org, ntfs3@lists.linux.dev,
 =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>,
 Ian Rogers <irogers@google.com>, Alexander Aring <alex.aring@gmail.com>,
 Jan Kara <jack@suse.cz>, Peter Zijlstra <peterz@infradead.org>,
 Dominique Martinet <asmadeus@codewreck.org>,
 Christian Schoenebeck <linux_oss@crudebyte.com>, ecryptfs@vger.kernel.org,
 linux-unionfs@vger.kernel.org, David Howells <dhowells@redhat.com>,
 Joseph Qi <joseph.qi@linux.alibaba.com>,
 Andreas Dilger <adilger.kernel@dilger.ca>,
 Mikulas Patocka <mikulas@artax.karlin.mff.cuni.cz>,
 linux-f2fs-devel@lists.sourceforge.net, David Airlie <airlied@gmail.com>,
 Steffen Klassert <steffen.klassert@secunet.com>,
 Eric Snowberg <eric.snowberg@oracle.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, linux-x25@vger.kernel.org,
 linux-bluetooth@vger.kernel.org, Richard Weinberger <richard@nod.at>,
 Mark Fasheh <mark@fasheh.com>, Dai Ngo <Dai.Ngo@oracle.com>,
 Ingo Molnar <mingo@redhat.com>, Jakub Kicinski <kuba@kernel.org>,
 Salah Triki <salah.triki@gmail.com>, Marcel Holtmann <marcel@holtmann.org>,
 Joerg Reuter <jreuter@yaina.de>, Simon Horman <horms@kernel.org>,
 Chao Yu <chao@kernel.org>, apparmor@lists.ubuntu.com,
 Tom Talpey <tom@talpey.com>, Bharath SM <bharathsm@microsoft.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 David Sterba <dsterba@suse.com>, Namhyung Kim <namhyung@kernel.org>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 John Johansen <john.johansen@canonical.com>,
 Luis de Bethencourt <luisbg@kernel.org>,
 Oliver Hartkopp <socketcan@hartkopp.net>, David Ahern <dsahern@kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, audit@vger.kernel.org,
 linux-security-module@vger.kernel.org, Johannes Thumshirn <jth@kernel.org>,
 David Woodhouse <dwmw2@infradead.org>, Joel Becker <jlbec@evilplan.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Queue-Id: 10E7B1F3FAF
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jlayton@kernel.org,m:lucho@ionkov.net,m:nvdimm@lists.linux.dev,m:pc@manguebit.org,m:djwong@kernel.org,m:al@alarsen.net,m:dri-devel@lists.freedesktop.org,m:linux-sctp@vger.kernel.org,m:linux-hams@vger.kernel.org,m:sumit.semwal@linaro.org,m:hubcap@omnibond.com,m:linux-xfs@vger.kernel.org,m:wufan@kernel.org,m:lucien.xin@gmail.com,m:ceph-devel@vger.kernel.org,m:jmorris@namei.org,m:code@tyhicks.com,m:hch@infradead.org,m:devel@lists.orangefs.org,m:sprasad@microsoft.com,m:ms@dev.tdt.de,m:hawk@kernel.org,m:jaharkes@cs.cmu.edu,m:willemb@google.com,m:acme@kernel.org,m:linux-fscrypt@vger.kernel.org,m:viro@zeniv.linux.org.uk,m:ronniesahlberg@gmail.com,m:glaubitz@physik.fu-berlin.de,m:david@kernel.org,m:ericvh@kernel.org,m:chengzhihao1@huawei.com,m:magnus.karlsson@intel.com,m:brauner@kernel.org,m:dmitry.kasatkin@gmail.com,m:stephen.smalley.work@gmail.com,m:linux-kernel@vger.kernel.org,m:eparis@redhat.com,m:linux-perf-users@vger.kernel.org,m:chuck.lever@oracle.com,m:mhir
 amat@kernel.org,m:jolsa@kernel.org,m:jack@suse.com,m:alexander.deucher@amd.com,m:linux-media@vger.kernel.org,m:trondmy@kernel.org,m:mark.rutland@arm.com,m:shaggy@kernel.org,m:zohar@linux.ibm.com,m:oleg@redhat.com,m:edumazet@google.com,m:johan.hedberg@gmail.com,m:simona@ffwll.ch,m:linux-cifs@vger.kernel.org,m:kuniyu@google.com,m:linux-nilfs@vger.kernel.org,m:john.fastabend@gmail.com,m:codalist@coda.cs.cmu.edu,m:courmisch@gmail.com,m:linux-trace-kernel@vger.kernel.org,m:okorniev@redhat.com,m:maciej.fijalkowski@intel.com,m:frank.li@vivo.com,m:selinux@vger.kernel.org,m:v9fs@lists.linux.dev,m:linux-can@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:casey@schaufler-ca.com,m:netfs@lists.linux.dev,m:jaegeuk@kernel.org,m:fsverity@lists.linux.dev,m:tytso@mit.edu,m:nico@fluxnic.net,m:muchun.song@linux.dev,m:roberto.sassu@huawei.com,m:davem@davemloft.net,m:anna@kernel.org,m:linux-integrity@vger.kernel.org,m:marcelo.leitner@gmail.com,m:luiz.dentz@gmail.com,m:amarkuze@redhat.com,m:martin@omni
 bond.com,m:alexander.shishkin@linux.intel.com,m:ocfs2-devel@lists.linux.dev,m:ast@kernel.org,m:linux-mtd@lists.infradead.org,m:amd-gfx@lists.freedesktop.org,m:marc.dionne@auristor.com,m:ncardwell@google.com,m:linux-afs@lists.infradead.org,m:raven@themaw.net,m:naohiro.aota@wdc.com,m:ebiggers@kernel.org,m:daniel@iogearbox.net,m:miklos@szeredi.hu,m:willy@infradead.org,m:coda@cs.cmu.edu,m:sdf@fomichev.me,m:neil@brown.name,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,paul-moore.com:s=google];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	RCPT_COUNT_GT_50(0.00)[170];
	NEURAL_HAM(-0.00)[-1.000];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FREEMAIL_CC(0.00)[ionkov.net,lists.linux.dev,manguebit.org,kernel.org,alarsen.net,lists.freedesktop.org,vger.kernel.org,linaro.org,omnibond.com,gmail.com,namei.org,tyhicks.com,infradead.org,lists.orangefs.org,microsoft.com,dev.tdt.de,cs.cmu.edu,google.com,zeniv.linux.org.uk,physik.fu-berlin.de,huawei.com,intel.com,redhat.com,oracle.com,suse.com,amd.com,arm.com,linux.ibm.com,ffwll.ch,coda.cs.cmu.edu,vivo.com,lists.linaro.org,schaufler-ca.com,mit.edu,fluxnic.net,linux.dev,davemloft.net,linux.intel.com,lists.infradead.org,auristor.com,themaw.net,wdc.com,iogearbox.net,szeredi.hu,fomichev.me,brown.name,lists.sourceforge.net,hallyn.com,goodmis.org,efficios.com,suse.de,paragon-software.com,kvack.org,lists.samba.org,samba.org,suse.cz,codewreck.org,crudebyte.com,linux.alibaba.com,dilger.ca,artax.karlin.mff.cuni.cz,secunet.com,gondor.apana.org.au,nod.at,fasheh.com,holtmann.org,yaina.de,lists.ubuntu.com,talpey.com,pengutronix.de,canonical.com,hartkopp.net,evilplan.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[paul@paul-moore.com];
	TAGGED_RCPT(0.00)[jfs-discussion];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,paul-moore.com:-];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,mail.gmail.com:mid]
X-Rspamd-Action: no action

T24gVHVlLCBNYXIgMywgMjAyNiBhdCAxMToxMuKAr0FNIEplZmYgTGF5dG9uIDxqbGF5dG9uQGtl
cm5lbC5vcmc+IHdyb3RlOgo+IE9uIFR1ZSwgMjAyNi0wMy0wMyBhdCAxMTowMyAtMDUwMCwgUGF1
bCBNb29yZSB3cm90ZToKPiA+IE9uIFR1ZSwgTWFyIDMsIDIwMjYgYXQgNjowNeKAr0FNIEplZmYg
TGF5dG9uIDxqbGF5dG9uQGtlcm5lbC5vcmc+IHdyb3RlOgo+ID4gPiBPbiBNb24sIDIwMjYtMDMt
MDIgYXQgMTg6NDQgLTA1MDAsIFBhdWwgTW9vcmUgd3JvdGU6Cj4gPiA+ID4gT24gTW9uLCBNYXIg
MiwgMjAyNiBhdCAzOjI14oCvUE0gSmVmZiBMYXl0b24gPGpsYXl0b25Aa2VybmVsLm9yZz4gd3Jv
dGU6Cj4gPiA+ID4gPgo+ID4gPiA+ID4gaW5vZGUtPmlfaW5vIGlzIGJlaW5nIHdpZGVuZWQgZnJv
bSB1bnNpZ25lZCBsb25nIHRvIHU2NC4gVGhlIGF1ZGl0Cj4gPiA+ID4gPiBzdWJzeXN0ZW0gdXNl
cyB1bnNpZ25lZCBsb25nIGlubyBpbiBzdHJ1Y3QgZmllbGRzLCBmdW5jdGlvbiBwYXJhbWV0ZXJz
LAo+ID4gPiA+ID4gYW5kIGxvY2FsIHZhcmlhYmxlcyB0aGF0IHN0b3JlIGlub2RlIG51bWJlcnMg
ZnJvbSBhcmJpdHJhcnkgZmlsZXN5c3RlbXMuCj4gPiA+ID4gPiBPbiAzMi1iaXQgcGxhdGZvcm1z
IHRoaXMgdHJ1bmNhdGVzIGlub2RlIG51bWJlcnMgdGhhdCBleGNlZWQgMzIgYml0cywKPiA+ID4g
PiA+IHdoaWNoIHdpbGwgY2F1c2UgaW5jb3JyZWN0IGF1ZGl0IGxvZyBlbnRyaWVzIGFuZCBicm9r
ZW4gd2F0Y2gvbWFyawo+ID4gPiA+ID4gY29tcGFyaXNvbnMuCj4gPiA+ID4gPgo+ID4gPiA+ID4g
V2lkZW4gYWxsIGF1ZGl0IGlubyBmaWVsZHMsIHBhcmFtZXRlcnMsIGFuZCBsb2NhbHMgdG8gdTY0
LCBhbmQgdXBkYXRlCj4gPiA+ID4gPiB0aGUgaW5vZGUgZm9ybWF0IHN0cmluZyBmcm9tICVsdSB0
byAlbGx1IHRvIG1hdGNoLgo+ID4gPiA+ID4KPiA+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IEplZmYg
TGF5dG9uIDxqbGF5dG9uQGtlcm5lbC5vcmc+Cj4gPiA+ID4gPiAtLS0KPiA+ID4gPiA+ICBpbmNs
dWRlL2xpbnV4L2F1ZGl0LmggICB8IDIgKy0KPiA+ID4gPiA+ICBrZXJuZWwvYXVkaXQuaCAgICAg
ICAgICB8IDkgKysrKy0tLS0tCj4gPiA+ID4gPiAga2VybmVsL2F1ZGl0X2Zzbm90aWZ5LmMgfCA0
ICsrLS0KPiA+ID4gPiA+ICBrZXJuZWwvYXVkaXRfd2F0Y2guYyAgICB8IDggKysrKy0tLS0KPiA+
ID4gPiA+ICBrZXJuZWwvYXVkaXRzYy5jICAgICAgICB8IDIgKy0KPiA+ID4gPiA+ICA1IGZpbGVz
IGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEzIGRlbGV0aW9ucygtKQo+ID4gPiA+Cj4gPiA+
ID4gV2Ugc2hvdWxkIGFsc28gdXBkYXRlIGF1ZGl0X2hhc2hfaW5vKCkgaW4ga2VybmVsL2F1ZGl0
LmguICBJdCBpcyBhCj4gPiA+ID4gKnZlcnkqIGJhc2ljIGhhc2ggZnVuY3Rpb24sIHNvIEkgdGhp
bmsgbGVhdmluZyB0aGUgZnVuY3Rpb24gYXMtaXMgYW5kCj4gPiA+ID4ganVzdCBjaGFuZ2luZyB0
aGUgaW5vZGUgcGFyYW1ldGVyIGZyb20gdTMyIHRvIHU2NCBzaG91bGQgYmUgZmluZS4KPiA+Cj4g
PiAuLi4KPiA+Cj4gPiA+IEl0IGRvZXNuJ3QgbG9vayBsaWtlIGNoYW5naW5nIHRoZSBhcmd1bWVu
dCB0eXBlIHdpbGwgbWFrZSBhbnkgbWF0ZXJpYWwKPiA+ID4gZGlmZmVyZW5jZS4gR2l2ZW4gdGhh
dCBpdCBzaG91bGQgc3RpbGwgd29yayB3aXRob3V0IHRoYXQgY2hhbmdlLCBjYW4gd2UKPiA+ID4g
bGVhdmUgdGhpcyBjbGVhbnVwIGZvciB5b3UgdG8gZG8gaW4gYSBmb2xsb3ctb24gcGF0Y2hzZXQ/
Cj4gPgo+ID4gSSB3b3VsZCBwcmVmZXIgaWYgeW91IG1hZGUgdGhlIGNoYW5nZSBhcyBwYXJ0IG9m
IHRoZSBwYXRjaCwgbWFpbmx5IHRvCj4gPiBrZWVwIGEgcGF0Y2ggcmVjb3JkIG9mIHRoaXMgYmVp
bmcgcmVsYXRlZC4KPgo+IE9rLCBJJ2xsIHNlZSBhYm91dCBmYWN0b3JpbmcgdGhhdCBpbi4KClRo
YW5rcy4KCj4gPiBJZGVhbGx5IEknZCByZWFsbHkgbGlrZSB0byBzZWUga2lub190IHVzZWQgaW4g
dGhlIGF1ZGl0IGNvZGUgaW5zdGVhZAo+ID4gb2YgdTY0LCBidXQgcGVyaGFwcyB0aGF0IGlzIGRv
bmUgaW4gYSBsYXRlciBwYXRjaCB0aGF0IEkgZGlkbid0IHNlZS4KPgo+IEkgdGhpbmsgSSBkaWRu
J3QgbWFrZSB0aGlzIGNsZWFyIGVub3VnaCBpbiB0aGUgY292ZXIgbGV0dGVyLCBidXQga2lub190
Cj4gaXMgcmVtb3ZlZCBhdCB0aGUgZW5kIG9mIHRoZSBzZXJpZXMuIEl0J3MganVzdCB0aGVyZSB0
byBzdXBwb3J0IHRoZQo+IGNoYW5nZSBkdXJpbmcgdGhlIGludGVyaW0uCgpBaCwgZ290Y2hhLCB0
aGFua3MgZm9yIHRoZSBlZHVjYXRpb24gOikKCj4gSWYgSENIIGdldHMgaGlzIHdheSB0byBkbyB0
aGUgY2hhbmdlcyBhcyBvbmUgYmlnIHBhdGNoLCBpdCdsbCBnbyBhd2F5Cj4gZW50aXJlbHkuCgot
LSAKcGF1bC1tb29yZS5jb20KCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fXwpKZnMtZGlzY3Vzc2lvbiBtYWlsaW5nIGxpc3QKSmZzLWRpc2N1c3Npb25AbGlz
dHMuc291cmNlZm9yZ2UubmV0Cmh0dHBzOi8vbGlzdHMuc291cmNlZm9yZ2UubmV0L2xpc3RzL2xp
c3RpbmZvL2pmcy1kaXNjdXNzaW9uCg==
