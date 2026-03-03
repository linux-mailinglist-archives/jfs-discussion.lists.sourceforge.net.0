Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id AMfbEYJHpmlyNQAAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Tue, 03 Mar 2026 03:29:22 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 737D91E803E
	for <lists+jfs-discussion@lfdr.de>; Tue, 03 Mar 2026 03:29:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:Message-ID:Date:In-Reply-To:References:
	MIME-Version:Sender:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=YnbygvI8xbI/9gB2x7KnJUToJz0YQCvz/lEQXZ+vfKI=; b=E0wm1hEZNzdE8HMPNeVHIubUix
	U2yRnt/nu9gSCuvo4fYk7ZwmjE8j6WOLE1P4wrDMpwmN6cFK2ZgSyzEz1sWrD/bfURFUh1hY37wqi
	e1F4qYhCEvTWjCSI0n0kZG/QhOwtHp3Oh9rtWEt0nzDvDJr8Ub8X/0WY5LdbsskjtAn0=;
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vxFV3-0001M9-I9;
	Tue, 03 Mar 2026 02:28:42 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <paul@paul-moore.com>) id 1vxFV1-0001Lq-Jn
 for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Mar 2026 02:28:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:Cc:To:
 Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=C1bg6xiI4y6+7k2tjKhPvGRGK3TFDQKnfwBJ+EjIYKA=; b=Azy9qvw70JVR7e7ScP0BuLqtXv
 xNDgyFpDwUXkkWTSpk0Zsjdkekl+UpSgnKvAiGImg9J/YqmBotcDhVkDbPLfhwNSpRu0Ig2w1qvuz
 Bm4D+ij8bKiGxgWKH0QLXKnLOJlXzXI4N5y+lFcGALOMb+Y152d2b3/BPEdQj2n0hxAE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:Cc:To:Subject:Message-ID:Date:From
 :In-Reply-To:References:MIME-Version:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C1bg6xiI4y6+7k2tjKhPvGRGK3TFDQKnfwBJ+EjIYKA=; b=CSxsfcbS/1kZMyq9PmclZ+Yw0o
 QZqXLH0A7PpEt7A+3190h2gqWxbRPaq7jN3AMZ/tY1qh2lZY9dbqpTFddlDFn2nmhQ4jd4qr9VaU+
 oLurj3TpbgV65dAyq6ik6nUnAUs+C5CBWTOac+VhZamVscVV5AgwGYmkRUDUbIiMD/Tw=;
Received: from mail-pj1-f51.google.com ([209.85.216.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1vxFV2-0002vh-0w for jfs-discussion@lists.sourceforge.net;
 Tue, 03 Mar 2026 02:28:40 +0000
Received: by mail-pj1-f51.google.com with SMTP id
 98e67ed59e1d1-359832fc558so1784570a91.0
 for <jfs-discussion@lists.sourceforge.net>;
 Mon, 02 Mar 2026 18:28:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1772504909; cv=none;
 d=google.com; s=arc-20240605;
 b=gcNZK9H9LdIhlFYl+WE4zjmZZwyHIf4uUhroLR4sVZgTM8C2IfthQFIWwhYubbPpAj
 605gDZyrLY5hVx+gdncdZnfEzkVFycTdQjcndTKd2e1WzdXjMeCArPeOu6298p6ko581
 MLkNHjDTZbqam33F8B88wLCFsxSwRlAZmR8UgOiNN5IeP4D8d2f8aEC+MVRkMTHozcwl
 Haa/0DmdfYHRGbkOUYUFkhMgl7WC6FubZFEmdVVdW4kSMkuotyY4p4C85EycdW2SL+Dz
 1ifoJNSYEKo4e5YOkObyo0YHOU7tDm4nPcWteLUrmXn/G5v8CXARjoME69Yd5OKusY3C
 Ukhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com;
 s=arc-20240605; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:dkim-signature;
 bh=C1bg6xiI4y6+7k2tjKhPvGRGK3TFDQKnfwBJ+EjIYKA=;
 fh=PPBr3S41rnHJ276ZSP7Z4pOBpxl6k04MXhA4nlXindU=;
 b=DQ5MBkkMFzSffnZELu3eJIUCMWByrDdIuuW3cv/oJz7BQFbt68IPxum4vPhMAd8/LW
 6HpNhgWMM/61BKQW1AXEBqnfnJ6RPmFnkHIFkQ1aJeO+l70xsWCmRrD5WipFvQb3yppv
 Pu9ez+Ue/dfOJy0GGPhPDGQsjpt561zc7iNneXPj3otGPcmgxhUZJsUrc+zzvqx2D+61
 Ct5ZRFTvMSa9x0inYZDynvO0RnmTt7pGjSpKIIkH/PkXD6V4i1RUaUE0wgtZZDduOeWv
 uw+HIwTJMG2fybQNu0nvvCVE+pO7jPagzZToJqSeBQqM2wnB564OFlmg33qcayFifx27
 QNDA==; darn=lists.sourceforge.net
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=paul-moore.com; s=google; t=1772504909; x=1773109709;
 darn=lists.sourceforge.net; 
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:from:to:cc:subject:date
 :message-id:reply-to;
 bh=C1bg6xiI4y6+7k2tjKhPvGRGK3TFDQKnfwBJ+EjIYKA=;
 b=SV8srIN/OcvYtvSNxKDwCIdajOEUjeSGY2ggUm3IwqRf4Tz0XEKBB6lL11MQ91hTXo
 zyx3Cq5oxQeOwOUL+ZCaj5hjgK9gMYFoXAawPmGmp0FVQcS2UuX/kKLc8mx8mZi6aVI1
 Zy+/qLhDpJ1AfmKDtgLDQJyjZ2BP+fkqMSVbeSGxbpQIvBSVGpPJ3nD3gBQCEVBruhZG
 gRo4lubCGVX6TUZL4gbyKzLe8zgw0aB8Qc/XH0GUPBTtJ674OMai6okrcxEzd2XGS4ca
 9Mu0Akm+Q78u8yKik/Z8Wq1yE6PlhuO2y4y3cPYFl9goJgJmX2mPHWdq+YEcP8r81gJW
 oTvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772504909; x=1773109709;
 h=content-transfer-encoding:cc:to:subject:message-id:date:from
 :in-reply-to:references:mime-version:x-gm-gg:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=C1bg6xiI4y6+7k2tjKhPvGRGK3TFDQKnfwBJ+EjIYKA=;
 b=vctBMdcw/xIDpcMhcTztrR5XeNCrhrCMNEt1DJ4HTe8kgmgSh3dnfq0kpJZPRL1m/p
 uEh7SsbN/JRJzDEasNcKcNdVyMfaLbPLHmgLcebD6hDb/rnkApzBY+fKpOtOI4OEu1/M
 DJFvfj/ZSsR64aC5zkpfsbIaRi63YkI8l5gKmZ9hEWsSR0V9E8THVFdUszNtL1sMc4c6
 qrf8gLO3PJtUFefloTs+koCAZ5WhnUoBugspvcuB0a/Lb3rDDNs7J4/taMWeY7nE2oRz
 QQIlsmOVIvamhXS0IPCb9W2oOi/mkNFNVZQqjkeP9FyKIMmXzKrujmpQLatQhH2Lc94L
 BGaA==
X-Forwarded-Encrypted: i=1;
 AJvYcCW6kSDMAnBPMR3qKq1a4oDARUte0xjQVdKfkuXORmZZKpe9ufcmQzywavlZzugY2aZGUxGwJUmgaCB4SMK1HA==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YwP8K09kL182ArMlRBf8Y9krxciIDklIdHLrNZr1mOiJpEQ2ysY
 CatKiRolaHBzE/PHtFVpE+bZr4+Bc3tgj0iIiwEuXzv5xfHTRtjmNuCV5AocmaKhrp4W8qzCHNU
 sch/rud1nkCEK8z1HIeUIOaYkH37lZUKbROO/62z9
X-Gm-Gg: ATEYQzykqaDGCPmZZ9fIpo94lh8NWj+zzKHSdDN58HoAXFLFhPuA0gb5M4DRzosRRVj
 j5S2/6UJSAQkTleana/PHfwF31TYBiVD2pbtQoTPAu7RWW9Z/nbO4V5OorXZDBexvXiVZSvenVS
 4kUMvaaHq88Xant0f381rL5dPvNoH+7SVAKo5YceNPTbetY7HF6biICLVfbeJYjRbQeUmLi2gnU
 oF4cnlf+3z/yGbsA/znBJoLg4a4/LZlF7EqR1k4UIQhTBEy1EEkqetRnsKHMHJOXKF+jZ5LGUok
 HfN0kLg=
X-Received: by 2002:a17:90a:7f93:b0:356:1db4:8fe5 with SMTP id
 98e67ed59e1d1-35965cc714fmr9453563a91.29.1772504909127; Mon, 02 Mar 2026
 18:28:29 -0800 (PST)
MIME-Version: 1.0
References: <20260302-iino-u64-v2-0-e5388800dae0@kernel.org>
 <20260302-iino-u64-v2-49-e5388800dae0@kernel.org>
In-Reply-To: <20260302-iino-u64-v2-49-e5388800dae0@kernel.org>
Date: Mon, 2 Mar 2026 21:28:17 -0500
X-Gm-Features: AaiRm53ToDAKLnqMzF7h_Rr5obeE3dnKPI4TQkaY52RSs5vb8oGyabc3Zmeif9I
Message-ID: <CAHC9VhRLAhMYL1ax3+LCeLLhnK0XGnvs0kGPGgHaptTaDynroA@mail.gmail.com>
To: Jeff Layton <jlayton@kernel.org>
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-1.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Mar 2,
 2026 at 3:36 PM Jeff Layton <jlayton@kernel.org>
 wrote: > > Convert security i_ino format strings to use the PRIino format
 > macro in preparation for the widening of i_ino via kino_t. > [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 ARC_VALID              Message has a valid ARC signature
 0.0 ARC_SIGNED             Message has a ARC signature
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.51 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1vxFV2-0002vh-0w
Subject: Re: [Jfs-discussion] [PATCH v2 049/110] security: use PRIino format
 for i_ino
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
X-Rspamd-Queue-Id: 737D91E803E
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-6.01 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:google.com:reject}];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7:c];
	MIME_BASE64_TEXT(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_MIXED(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_CC(0.00)[ionkov.net,lists.linux.dev,manguebit.org,kernel.org,alarsen.net,lists.freedesktop.org,vger.kernel.org,linaro.org,omnibond.com,gmail.com,namei.org,tyhicks.com,infradead.org,lists.orangefs.org,microsoft.com,dev.tdt.de,cs.cmu.edu,google.com,zeniv.linux.org.uk,physik.fu-berlin.de,huawei.com,intel.com,redhat.com,oracle.com,suse.com,amd.com,arm.com,linux.ibm.com,ffwll.ch,coda.cs.cmu.edu,vivo.com,lists.linaro.org,schaufler-ca.com,mit.edu,fluxnic.net,linux.dev,davemloft.net,linux.intel.com,lists.infradead.org,auristor.com,themaw.net,wdc.com,iogearbox.net,szeredi.hu,fomichev.me,brown.name,lists.sourceforge.net,hallyn.com,goodmis.org,efficios.com,suse.de,paragon-software.com,kvack.org,lists.samba.org,samba.org,suse.cz,codewreck.org,crudebyte.com,linux.alibaba.com,dilger.ca,artax.karlin.mff.cuni.cz,secunet.com,gondor.apana.org.au,nod.at,fasheh.com,holtmann.org,yaina.de,lists.ubuntu.com,talpey.com,pengutronix.de,canonical.com,hartkopp.net,evilplan.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:jlayton@kernel.org,m:lucho@ionkov.net,m:nvdimm@lists.linux.dev,m:pc@manguebit.org,m:djwong@kernel.org,m:al@alarsen.net,m:dri-devel@lists.freedesktop.org,m:linux-sctp@vger.kernel.org,m:linux-hams@vger.kernel.org,m:sumit.semwal@linaro.org,m:hubcap@omnibond.com,m:linux-xfs@vger.kernel.org,m:wufan@kernel.org,m:lucien.xin@gmail.com,m:ceph-devel@vger.kernel.org,m:jmorris@namei.org,m:code@tyhicks.com,m:hch@infradead.org,m:devel@lists.orangefs.org,m:sprasad@microsoft.com,m:ms@dev.tdt.de,m:hawk@kernel.org,m:jaharkes@cs.cmu.edu,m:willemb@google.com,m:acme@kernel.org,m:linux-fscrypt@vger.kernel.org,m:viro@zeniv.linux.org.uk,m:ronniesahlberg@gmail.com,m:glaubitz@physik.fu-berlin.de,m:david@kernel.org,m:ericvh@kernel.org,m:chengzhihao1@huawei.com,m:magnus.karlsson@intel.com,m:brauner@kernel.org,m:dmitry.kasatkin@gmail.com,m:stephen.smalley.work@gmail.com,m:linux-kernel@vger.kernel.org,m:eparis@redhat.com,m:linux-perf-users@vger.kernel.org,m:chuck.lever@oracle.com,m:mhir
 amat@kernel.org,m:jolsa@kernel.org,m:jack@suse.com,m:alexander.deucher@amd.com,m:linux-media@vger.kernel.org,m:trondmy@kernel.org,m:mark.rutland@arm.com,m:shaggy@kernel.org,m:zohar@linux.ibm.com,m:oleg@redhat.com,m:edumazet@google.com,m:johan.hedberg@gmail.com,m:simona@ffwll.ch,m:linux-cifs@vger.kernel.org,m:kuniyu@google.com,m:linux-nilfs@vger.kernel.org,m:john.fastabend@gmail.com,m:codalist@coda.cs.cmu.edu,m:courmisch@gmail.com,m:linux-trace-kernel@vger.kernel.org,m:okorniev@redhat.com,m:maciej.fijalkowski@intel.com,m:frank.li@vivo.com,m:selinux@vger.kernel.org,m:v9fs@lists.linux.dev,m:linux-can@vger.kernel.org,m:linaro-mm-sig@lists.linaro.org,m:casey@schaufler-ca.com,m:netfs@lists.linux.dev,m:jaegeuk@kernel.org,m:fsverity@lists.linux.dev,m:tytso@mit.edu,m:nico@fluxnic.net,m:muchun.song@linux.dev,m:roberto.sassu@huawei.com,m:davem@davemloft.net,m:anna@kernel.org,m:linux-integrity@vger.kernel.org,m:marcelo.leitner@gmail.com,m:luiz.dentz@gmail.com,m:amarkuze@redhat.com,m:martin@omni
 bond.com,m:alexander.shishkin@linux.intel.com,m:ocfs2-devel@lists.linux.dev,m:ast@kernel.org,m:linux-mtd@lists.infradead.org,m:amd-gfx@lists.freedesktop.org,m:marc.dionne@auristor.com,m:ncardwell@google.com,m:linux-afs@lists.infradead.org,m:raven@themaw.net,m:naohiro.aota@wdc.com,m:ebiggers@kernel.org,m:daniel@iogearbox.net,m:miklos@szeredi.hu,m:willy@infradead.org,m:coda@cs.cmu.edu,m:sdf@fomichev.me,m:neil@brown.name,s:lists@lfdr.de];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,paul-moore.com:-];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	RCPT_COUNT_GT_50(0.00)[170];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,paul-moore.com:s=google];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	HAS_REPLYTO(0.00)[paul@paul-moore.com];
	TAGGED_RCPT(0.00)[jfs-discussion];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[mail.gmail.com:mid,paul-moore.com:replyto,paul-moore.com:email,paul-moore.com:url,lists.sourceforge.net:dkim,lists.sourceforge.net:rdns,lists.sourceforge.net:helo]
X-Rspamd-Action: no action

T24gTW9uLCBNYXIgMiwgMjAyNiBhdCAzOjM24oCvUE0gSmVmZiBMYXl0b24gPGpsYXl0b25Aa2Vy
bmVsLm9yZz4gd3JvdGU6Cj4KPiBDb252ZXJ0IHNlY3VyaXR5IGlfaW5vIGZvcm1hdCBzdHJpbmdz
IHRvIHVzZSB0aGUgUFJJaW5vIGZvcm1hdAo+IG1hY3JvIGluIHByZXBhcmF0aW9uIGZvciB0aGUg
d2lkZW5pbmcgb2YgaV9pbm8gdmlhIGtpbm9fdC4KPgo+IEFsc28gY29ycmVjdCBzaWduZWQgZm9y
bWF0IHNwZWNpZmllcnMgdG8gdW5zaWduZWQsIHNpbmNlIGlub2RlCj4gbnVtYmVycyBhcmUgdW5z
aWduZWQgdmFsdWVzLgo+Cj4gU2lnbmVkLW9mZi1ieTogSmVmZiBMYXl0b24gPGpsYXl0b25Aa2Vy
bmVsLm9yZz4KPiAtLS0KPiAgc2VjdXJpdHkvYXBwYXJtb3IvYXBwYXJtb3Jmcy5jICAgICAgIHwg
IDQgKystLQo+ICBzZWN1cml0eS9pbnRlZ3JpdHkvaW50ZWdyaXR5X2F1ZGl0LmMgfCAgMiArLQo+
ICBzZWN1cml0eS9pcGUvYXVkaXQuYyAgICAgICAgICAgICAgICAgfCAgMiArLQo+ICBzZWN1cml0
eS9sc21fYXVkaXQuYyAgICAgICAgICAgICAgICAgfCAxMCArKysrKy0tLS0tCj4gIHNlY3VyaXR5
L3NlbGludXgvaG9va3MuYyAgICAgICAgICAgICB8IDEwICsrKysrLS0tLS0KPiAgc2VjdXJpdHkv
c21hY2svc21hY2tfbHNtLmMgICAgICAgICAgIHwgMTIgKysrKysrLS0tLS0tCj4gIDYgZmlsZXMg
Y2hhbmdlZCwgMjAgaW5zZXJ0aW9ucygrKSwgMjAgZGVsZXRpb25zKC0pCgpObyBjb21tZW50IG9u
IHRoZSBQUklpbm8gc3BlY2lmaWVyLCBidXQgdGhlIExTTSBmcmFtZXdvcmsgYW5kIFNFTGludXgK
Y2hhbmdlcyBzZWVtIGNvbXBsZXRlLgoKQWNrZWQtYnk6IFBhdWwgTW9vcmUgPHBhdWxAcGF1bC1t
b29yZS5jb20+IChMU00vU0VMaW51eCkKCi0tIApwYXVsLW1vb3JlLmNvbQoKCl9fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCkpmcy1kaXNjdXNzaW9uIG1haWxp
bmcgbGlzdApKZnMtZGlzY3Vzc2lvbkBsaXN0cy5zb3VyY2Vmb3JnZS5uZXQKaHR0cHM6Ly9saXN0
cy5zb3VyY2Vmb3JnZS5uZXQvbGlzdHMvbGlzdGluZm8vamZzLWRpc2N1c3Npb24K
