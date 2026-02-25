Return-Path: <jfs-discussion-bounces@lists.sourceforge.net>
Delivered-To: lists+jfs-discussion@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oE6AHd16n2lYcQQAu9opvQ
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Feb 2026 23:42:37 +0100
X-Original-To: lists+jfs-discussion@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 810B119E65D
	for <lists+jfs-discussion@lfdr.de>; Wed, 25 Feb 2026 23:42:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.sourceforge.net; s=beta; h=Content-Transfer-Encoding:Content-Type:Cc:
	Reply-To:From:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Subject:To:In-Reply-To:References:Message-Id:
	MIME-Version:Date:Sender:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8WYWruZLaKicqozE9aPbMjWwhNtIIxizZxy9hRQQgxU=; b=YvE/dQG9yPlNUa/Z8+BSYKy06z
	bNin0HpC+jgVaWho7Lm+LJWWKrtmpBbygxZHFyxW+LDpantuP0biUOzdWZllAytNKiox+W4mZUv3T
	djaf9SkNGtMMGevbHpAIfMpbmnQZXMwy6gYGaT2taIFeEB+pkRLQK91GsWNOqdkuNdF8=;
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <jfs-discussion-bounces@lists.sourceforge.net>)
	id 1vvNZs-0002Wd-Uj;
	Wed, 25 Feb 2026 22:41:56 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tz2294@columbia.edu>) id 1vvNZp-0002WJ-3P
 for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Feb 2026 22:41:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Cc:To:In-Reply-To:References:Message-Id:
 Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:Sender:
 Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
 :Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UCadQArHxHi9ThZ1jAIvSvngqH0LQPrZ8HK0cEt3m1g=; b=XtgxgTJ7RM92w8zx4lrtnGOgbq
 3AktJipNx0/nGtWlKy090t4kdcHLfoQWx20N2RcJhfGtnUbKmIQ/ixwtYM62fySxNt/vzVxGe41Qr
 mMjYtH64pA0M1+Hco4hn4QNzDWFpvOat8SHk1Hv6oqJqCGFD2wd6ZTfr63H4IgM9ZfNc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Cc:To:In-Reply-To:References:Message-Id:Content-Transfer-Encoding:
 Content-Type:MIME-Version:Subject:Date:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UCadQArHxHi9ThZ1jAIvSvngqH0LQPrZ8HK0cEt3m1g=; b=WeeJ8UyD4AAYY3amNsSELJNNU4
 mcQIfocH7aNaqlaUbQk3bkDYYi+Hc8BTfyplgWw1fRrAMPz4+6BixxZ4Oi4HcHMi10tOzDd8j+sQX
 pdMuwgadG6mAQjqbcEmGD2hf0yfVmfmK+/ipNsS+QCnz/SzAG7yuNiIDEw3BKwxWBBNU=;
Received: from mx0b-00364e01.pphosted.com ([148.163.139.74])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1vvNZo-0005ij-Ab for jfs-discussion@lists.sourceforge.net;
 Wed, 25 Feb 2026 22:41:53 +0000
Received: from pps.filterd (m0499198.ppops.net [127.0.0.1])
 by mx0b-00364e01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id
 61PMC7ma184807
 for <jfs-discussion@lists.sourceforge.net>; Wed, 25 Feb 2026 17:41:41 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=columbia.edu; h=
 cc:content-transfer-encoding:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to; s=pps01; bh=UCad
 QArHxHi9ThZ1jAIvSvngqH0LQPrZ8HK0cEt3m1g=; b=ZQwNYgHVk1e7AonBp1GN
 AHhms9mVIbxtdg9djgycPaIK5SH2e7LZ9supw+fWQxOsuxDxLdWYTg29qYdOZWOY
 Yoxind27Lp1LnTlBB+iocGqkBeujZgdoOx0KTpb3+L2flDUaQvgq7QGL0FSOMsZb
 aePYzQ46aAH5yfuxGueCd2PW8+BtSYb/6riEK9KE4UlCVlV4OAKU7LPjPny0bZRa
 r/F5oQMKeYFunqtUXZRY4gcq/FG3n9onHe0PD5YjSbIvEHhHmA/12/mqQIcDCB0E
 /BIYyBF4K6XcVWBm+onb/+8xjo0VkdTKX9hjL7/Xe7D735HMn5X1aR3McboDQo3F
 fQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198])
 by mx0b-00364e01.pphosted.com (PPS) with ESMTPS id 4chywywhb8-1
 (version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Feb 2026 17:41:41 -0500 (EST)
Received: by mail-qt1-f198.google.com with SMTP id
 d75a77b69052e-50333a8184aso30969571cf.1
 for <jfs-discussion@lists.sourceforge.net>;
 Wed, 25 Feb 2026 14:41:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1772059300; x=1772664100;
 h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
 :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
 :cc:subject:date:message-id:reply-to;
 bh=UCadQArHxHi9ThZ1jAIvSvngqH0LQPrZ8HK0cEt3m1g=;
 b=ktdOIOgwK62OTyN4Ovv0815hcXEhFHQGK3H1tj0225n0ecvyh0l09OZWmQ2A7cV2+O
 wgVj/SBMOvcBPXpdpF5LvtAFzJ87QvXVZN4Y4DJc5v6XAr+O5xR+B8FxB23kptoZWKN5
 fBjJVF6QywOuLib6qVAbizL3onDelB6JY4jHm3YGEB5tbc2rBUroC9JZQa6KtXptSAPe
 FBXTZduxKlBtNOl6SKB4sryEwvYtKit/C83gv+Z+kWsnsuLe/vEfuSBiTrcLuXzDQYmv
 VCW69XKeWFsDRqn80tKjpOXybqAJqyfYe7OI4t9iAW++4+GJEAwVpGLuOIa6p/8LgVnE
 w0Uw==
X-Forwarded-Encrypted: i=1;
 AJvYcCXFZqmAi4XGJDZQv+SZLRAtH18YNpTDDzJzCNJPa7MLSQeLiearX6Cls2RPcw2EkiyH31NeBHv/t8q950mkTQ==@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzTNW+/Ed7yqcr4c+pP83kBeLx/tVMG6DdAOrRetXjVHbf5JOBA
 2AWsxJcSLpI9LQe9e/FlxZj8396qCc0tr34M0Audy39DCL9hHzC1wNlMjJiW69EGgbXWOB7HenI
 rmcgidh4Ar4xBP5bDdOGr0+YEQsvG4ow5Aj3Q3SKTOT/tcelR6mWeCJF1unGBv63hZGB4C9ug
X-Gm-Gg: ATEYQzwqzMPHraHgUJXIeZ8Bb6OfHKyxZ+iDN0h+Hh5tGSQn17oBaHJ5YQe0bIzGls0
 kSACJlNJ4TVTikFSmYuxGdLP418evcEcB2KJpmNqUeHPZnjxC2XfZPAV9ZhgrZ2Z26vSbIEYUhy
 8zf+Rg/9R6Qe+vY09pEiFembVu243q+CvfI5aN+JEbzP4MeSj6DjIsH2Jm6NgfVbqUZr5rxHVjV
 xyZHBkDvkhn54lMLjbJyOY0/lw1L/JJ23YZ7bd6wOrb/6+0v8fg82+illLacQIeooF6tPqbRL9F
 rD1T3nBjxcPdAcfeHId4iyuxNYeNwai7moAIvXyFSL2y/ZlybrDaoC9/eidFCv+yWtrqnzSwCjy
 hY8M5pylmrNqU21PIoj8N4lXJdNOcZL0F
X-Received: by 2002:ac8:5850:0:b0:4ec:a568:7b1c with SMTP id
 d75a77b69052e-50745effd87mr1368531cf.21.1772059300008; 
 Wed, 25 Feb 2026 14:41:40 -0800 (PST)
X-Received: by 2002:ac8:5850:0:b0:4ec:a568:7b1c with SMTP id
 d75a77b69052e-50745effd87mr1368101cf.21.1772059299490; 
 Wed, 25 Feb 2026 14:41:39 -0800 (PST)
Received: from [127.0.1.1] ([216.158.158.246])
 by smtp.gmail.com with ESMTPSA id
 d75a77b69052e-507449be47dsm4196231cf.15.2026.02.25.14.41.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 25 Feb 2026 14:41:38 -0800 (PST)
Date: Wed, 25 Feb 2026 17:40:57 -0500
MIME-Version: 1.0
Message-Id: <20260225-blk-dontcache-v2-2-70e7ac4f7108@columbia.edu>
References: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
In-Reply-To: <20260225-blk-dontcache-v2-0-70e7ac4f7108@columbia.edu>
To: Jens Axboe <axboe@kernel.dk>,
 "Tigran A. Aivazian" <aivazian.tigran@gmail.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>,
 Christian Brauner <brauner@kernel.org>, Jan Kara <jack@suse.cz>,
 Namjae Jeon <linkinjeon@kernel.org>, Sungjong Seo <sj1557.seo@samsung.com>,
 Yuezhang Mo <yuezhang.mo@sony.com>, Dave Kleikamp <shaggy@kernel.org>,
 Ryusuke Konishi <konishi.ryusuke@gmail.com>,
 Viacheslav Dubeyko <slava@dubeyko.com>,
 Konstantin Komarov <almaz.alexandrovich@paragon-software.com>,
 Bob Copeland <me@bobcopeland.com>,
 "Matthew Wilcox (Oracle)" <willy@infradead.org>,
 Andrew Morton <akpm@linux-foundation.org>
X-Mailer: b4 0.14.3-dev-d7477
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772059296; l=9465;
 i=tz2294@columbia.edu; s=20250528; h=from:subject:message-id;
 bh=Ut4irJAP91Ja56kFfECaXVcCmgWiTiooWThaHJixb4A=;
 b=Nv2Kk4KuLTpGQX84Y042xeZddog0F8f7rPDUzrUKUw+0BVDRxxIPtrNiY2iL73Q/t4raHOUQx
 MqYl+nhxhJlBePWXMDkS88wNw/JvTeg7ErN4IzVAeE9mMzN1BIIMHzs
X-Developer-Key: i=tz2294@columbia.edu; a=ed25519;
 pk=BIj5KdACscEOyAC0oIkeZqLB3L94fzBnDccEooxeM5Y=
X-Proofpoint-ORIG-GUID: z5x-0mOTjsuTX3mvx-sQJwNCGgjdv4A3
X-Authority-Analysis: v=2.4 cv=ccTfb3DM c=1 sm=1 tr=0 ts=699f7aa5 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=mD05b5UW6KhLIDvowZ5dSQ==:17
 a=IkcTkHD0fZMA:10 a=HzLeVaNsDn8A:10 a=x7bEGLp0ZPQA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=Da8U98TiO7q1upZEImrf:22 a=BpGzv1V74M3SfeTrGa8v:22
 a=Omgu3vtQbb9kFtOpCJYA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMjI1MDIxNyBTYWx0ZWRfX8aYxeXMr5mgY
 M3LICkK8Y1qYSL05oT2GGwqUplx9XKgOxHG+l6WQk0zZiZksgYZsKrYIHeRSCGEAp++9O17GY/l
 R5ZawApIqHCK1UZPJp6hJtCWeD+xZOsn6MW2Mg1Dg96IAiA43eYIgd1hz1QWHlyLN4/tO29WKOg
 c4hQWxKaF7zaGajcA9YmptDF+i83G7WYwco2eXUFccCwoU2zG04kVHBJ2TXRcvenPXyw3fbBzbA
 EBWsN1G+o4IscUhmWGv2OgBxvQ7c6bZVNPGh0HW8vIl3SdYKfDwBJYqy8IwSSpS1mcB1wn+ypFv
 VJzQzMcvhjN1mstljkHLDQz4EzZPeSJdBx2AXpy0CCfGlLxOjNpL9RI6Y44Mihlb+wygeKDAzZM
 jtpXcCmR8yJ62RUoxQ2bpbSh4+jlYKlzgq5tPpLIvMIN0zJqhKkzrZwH3MoxotPD0rjXMZtHb97
 C0yz1t/kOI/Yq4nIEYA==
X-Proofpoint-GUID: z5x-0mOTjsuTX3mvx-sQJwNCGgjdv4A3
X-Proofpoint-Virus-Version: vendor=nai engine=6800 definitions=11712
 signatures=596818
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=10 adultscore=0 clxscore=1015 spamscore=0 impostorscore=10
 phishscore=0 priorityscore=1501 malwarescore=0 suspectscore=0 bulkscore=10
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2602130000 definitions=main-2602250217
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "sfi-spamd-2.hosts.colo.sdot.me", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview: Block device buffered reads and writes already pass through
 filemap_read() and iomap_file_buffered_write() respectively, both of which
 handle IOCB_DONTCACHE. Enable RWF_DONTCACHE for block device file [...] 
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1vvNZo-0005ij-Ab
Subject: [Jfs-discussion] [PATCH RFC v2 2/2] block: enable RWF_DONTCACHE for
 block devices
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
From: Tal Zussman via Jfs-discussion <jfs-discussion@lists.sourceforge.net>
Reply-To: Tal Zussman <tz2294@columbia.edu>
Cc: jfs-discussion@lists.sourceforge.net, linux-nilfs@vger.kernel.org,
 ntfs3@lists.linux.dev, linux-kernel@vger.kernel.org,
 linux-block@vger.kernel.org, linux-mm@kvack.org, linux-fsdevel@vger.kernel.org,
 Tal Zussman <tz2294@columbia.edu>, linux-ext4@vger.kernel.org,
 linux-karma-devel@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: jfs-discussion-bounces@lists.sourceforge.net
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-7.11 / 15.00];
	WHITELIST_DMARC(-7.00)[sourceforge.net:D:+];
	SUSPICIOUS_RECIPS(1.50)[];
	DMARC_POLICY_ALLOW_WITH_FAILURES(-0.50)[];
	RWL_MAILSPIKE_EXCELLENT(-0.40)[216.105.38.7:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:216.105.38.7];
	R_DKIM_ALLOW(-0.20)[lists.sourceforge.net:s=beta];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS(0.00)[m:axboe@kernel.dk,m:aivazian.tigran@gmail.com,m:viro@zeniv.linux.org.uk,m:brauner@kernel.org,m:jack@suse.cz,m:linkinjeon@kernel.org,m:sj1557.seo@samsung.com,m:yuezhang.mo@sony.com,m:shaggy@kernel.org,m:konishi.ryusuke@gmail.com,m:slava@dubeyko.com,m:almaz.alexandrovich@paragon-software.com,m:me@bobcopeland.com,m:willy@infradead.org,m:akpm@linux-foundation.org,m:jfs-discussion@lists.sourceforge.net,m:linux-nilfs@vger.kernel.org,m:ntfs3@lists.linux.dev,m:linux-kernel@vger.kernel.org,m:linux-block@vger.kernel.org,m:linux-mm@kvack.org,m:linux-fsdevel@vger.kernel.org,m:tz2294@columbia.edu,m:linux-ext4@vger.kernel.org,m:linux-karma-devel@lists.sourceforge.net,m:aivaziantigran@gmail.com,m:konishiryusuke@gmail.com,s:lists@lfdr.de];
	DKIM_MIXED(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FREEMAIL_TO(0.00)[kernel.dk,gmail.com,zeniv.linux.org.uk,kernel.org,suse.cz,samsung.com,sony.com,dubeyko.com,paragon-software.com,bobcopeland.com,infradead.org,linux-foundation.org];
	FORGED_SENDER(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	RCPT_COUNT_TWELVE(0.00)[25];
	TO_DN_SOME(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[lists.sourceforge.net,none];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[jfs-discussion@lists.sourceforge.net];
	R_DKIM_REJECT(0.00)[sourceforge.net:s=x,sf.net:s=x,columbia.edu:s=pps01];
	DKIM_TRACE(0.00)[lists.sourceforge.net:+,sourceforge.net:-,sf.net:-,columbia.edu:-];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[suse.cz:email,columbia.edu:mid,columbia.edu:email,columbia.edu:replyto,lists.sourceforge.net:rdns,lists.sourceforge.net:helo,lists.sourceforge.net:dkim];
	PREVIOUSLY_DELIVERED(0.00)[jfs-discussion@lists.sourceforge.net];
	NEURAL_HAM(-0.00)[-0.999];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jfs-discussion@lists.sourceforge.net,jfs-discussion-bounces@lists.sourceforge.net];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	HAS_REPLYTO(0.00)[tz2294@columbia.edu];
	TAGGED_RCPT(0.00)[jfs-discussion];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:11320, ipnet:216.105.32.0/21, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 810B119E65D
X-Rspamd-Action: no action

Block device buffered reads and writes already pass through
filemap_read() and iomap_file_buffered_write() respectively, both of
which handle IOCB_DONTCACHE. Enable RWF_DONTCACHE for block device files
by setting FOP_DONTCACHE in def_blk_fops.

For CONFIG_BUFFER_HEAD paths, thread the kiocb through
block_write_begin() so that buffer_head-based I/O can use DONTCACHE
behavior as well. Callers without a kiocb context (e.g. nilfs2 recovery)
pass NULL, which preserves the existing behavior.

This support is useful for databases that operate on raw block devices,
among other userspace applications.

Reviewed-by: Jan Kara <jack@suse.cz>
Signed-off-by: Tal Zussman <tz2294@columbia.edu>
---
 block/fops.c                |  4 ++--
 fs/bfs/file.c               |  2 +-
 fs/buffer.c                 | 12 ++++++++----
 fs/exfat/inode.c            |  2 +-
 fs/ext2/inode.c             |  2 +-
 fs/jfs/inode.c              |  2 +-
 fs/minix/inode.c            |  2 +-
 fs/nilfs2/inode.c           |  2 +-
 fs/nilfs2/recovery.c        |  2 +-
 fs/ntfs3/inode.c            |  2 +-
 fs/omfs/file.c              |  2 +-
 fs/udf/inode.c              |  2 +-
 fs/ufs/inode.c              |  2 +-
 include/linux/buffer_head.h |  5 +++--
 14 files changed, 24 insertions(+), 19 deletions(-)

diff --git a/block/fops.c b/block/fops.c
index 4d32785b31d9..6bc727f8b252 100644
--- a/block/fops.c
+++ b/block/fops.c
@@ -505,7 +505,7 @@ static int blkdev_write_begin(const struct kiocb *iocb,
 			      unsigned len, struct folio **foliop,
 			      void **fsdata)
 {
-	return block_write_begin(mapping, pos, len, foliop, blkdev_get_block);
+	return block_write_begin(iocb, mapping, pos, len, foliop, blkdev_get_block);
 }
 
 static int blkdev_write_end(const struct kiocb *iocb,
@@ -967,7 +967,7 @@ const struct file_operations def_blk_fops = {
 	.splice_write	= iter_file_splice_write,
 	.fallocate	= blkdev_fallocate,
 	.uring_cmd	= blkdev_uring_cmd,
-	.fop_flags	= FOP_BUFFER_RASYNC,
+	.fop_flags	= FOP_BUFFER_RASYNC | FOP_DONTCACHE,
 };
 
 static __init int blkdev_init(void)
diff --git a/fs/bfs/file.c b/fs/bfs/file.c
index d33d6bde992b..f2804e38b8a7 100644
--- a/fs/bfs/file.c
+++ b/fs/bfs/file.c
@@ -177,7 +177,7 @@ static int bfs_write_begin(const struct kiocb *iocb,
 {
 	int ret;
 
-	ret = block_write_begin(mapping, pos, len, foliop, bfs_get_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, bfs_get_block);
 	if (unlikely(ret))
 		bfs_write_failed(mapping, pos + len);
 
diff --git a/fs/buffer.c b/fs/buffer.c
index 838c0c571022..33c3580b85d8 100644
--- a/fs/buffer.c
+++ b/fs/buffer.c
@@ -2241,14 +2241,18 @@ EXPORT_SYMBOL(block_commit_write);
  *
  * The filesystem needs to handle block truncation upon failure.
  */
-int block_write_begin(struct address_space *mapping, loff_t pos, unsigned len,
-		struct folio **foliop, get_block_t *get_block)
+int block_write_begin(const struct kiocb *iocb, struct address_space *mapping,
+		loff_t pos, unsigned len, struct folio **foliop, get_block_t *get_block)
 {
 	pgoff_t index = pos >> PAGE_SHIFT;
+	fgf_t fgp_flags = FGP_WRITEBEGIN;
 	struct folio *folio;
 	int status;
 
-	folio = __filemap_get_folio(mapping, index, FGP_WRITEBEGIN,
+	if (iocb && iocb->ki_flags & IOCB_DONTCACHE)
+		fgp_flags |= FGP_DONTCACHE;
+
+	folio = __filemap_get_folio(mapping, index, fgp_flags,
 			mapping_gfp_mask(mapping));
 	if (IS_ERR(folio))
 		return PTR_ERR(folio);
@@ -2591,7 +2595,7 @@ int cont_write_begin(const struct kiocb *iocb, struct address_space *mapping,
 		(*bytes)++;
 	}
 
-	return block_write_begin(mapping, pos, len, foliop, get_block);
+	return block_write_begin(iocb, mapping, pos, len, foliop, get_block);
 }
 EXPORT_SYMBOL(cont_write_begin);
 
diff --git a/fs/exfat/inode.c b/fs/exfat/inode.c
index f9501c3a3666..39d36e8fdfd6 100644
--- a/fs/exfat/inode.c
+++ b/fs/exfat/inode.c
@@ -456,7 +456,7 @@ static int exfat_write_begin(const struct kiocb *iocb,
 	if (unlikely(exfat_forced_shutdown(mapping->host->i_sb)))
 		return -EIO;
 
-	ret = block_write_begin(mapping, pos, len, foliop, exfat_get_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, exfat_get_block);
 
 	if (ret < 0)
 		exfat_write_failed(mapping, pos+len);
diff --git a/fs/ext2/inode.c b/fs/ext2/inode.c
index dbfe9098a124..11aab03de752 100644
--- a/fs/ext2/inode.c
+++ b/fs/ext2/inode.c
@@ -930,7 +930,7 @@ ext2_write_begin(const struct kiocb *iocb, struct address_space *mapping,
 {
 	int ret;
 
-	ret = block_write_begin(mapping, pos, len, foliop, ext2_get_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, ext2_get_block);
 	if (ret < 0)
 		ext2_write_failed(mapping, pos + len);
 	return ret;
diff --git a/fs/jfs/inode.c b/fs/jfs/inode.c
index 4709762713ef..ae52db437771 100644
--- a/fs/jfs/inode.c
+++ b/fs/jfs/inode.c
@@ -303,7 +303,7 @@ static int jfs_write_begin(const struct kiocb *iocb,
 {
 	int ret;
 
-	ret = block_write_begin(mapping, pos, len, foliop, jfs_get_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, jfs_get_block);
 	if (unlikely(ret))
 		jfs_write_failed(mapping, pos + len);
 
diff --git a/fs/minix/inode.c b/fs/minix/inode.c
index 51ea9bdc813f..9075c0ba2f20 100644
--- a/fs/minix/inode.c
+++ b/fs/minix/inode.c
@@ -465,7 +465,7 @@ static int minix_write_begin(const struct kiocb *iocb,
 {
 	int ret;
 
-	ret = block_write_begin(mapping, pos, len, foliop, minix_get_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, minix_get_block);
 	if (unlikely(ret))
 		minix_write_failed(mapping, pos + len);
 
diff --git a/fs/nilfs2/inode.c b/fs/nilfs2/inode.c
index 51bde45d5865..d9d57eeecc5d 100644
--- a/fs/nilfs2/inode.c
+++ b/fs/nilfs2/inode.c
@@ -230,7 +230,7 @@ static int nilfs_write_begin(const struct kiocb *iocb,
 	if (unlikely(err))
 		return err;
 
-	err = block_write_begin(mapping, pos, len, foliop, nilfs_get_block);
+	err = block_write_begin(iocb, mapping, pos, len, foliop, nilfs_get_block);
 	if (unlikely(err)) {
 		nilfs_write_failed(mapping, pos + len);
 		nilfs_transaction_abort(inode->i_sb);
diff --git a/fs/nilfs2/recovery.c b/fs/nilfs2/recovery.c
index a9c61d0492cb..2f5fe44bf736 100644
--- a/fs/nilfs2/recovery.c
+++ b/fs/nilfs2/recovery.c
@@ -541,7 +541,7 @@ static int nilfs_recover_dsync_blocks(struct the_nilfs *nilfs,
 		}
 
 		pos = rb->blkoff << inode->i_blkbits;
-		err = block_write_begin(inode->i_mapping, pos, blocksize,
+		err = block_write_begin(NULL, inode->i_mapping, pos, blocksize,
 					&folio, nilfs_get_block);
 		if (unlikely(err)) {
 			loff_t isize = inode->i_size;
diff --git a/fs/ntfs3/inode.c b/fs/ntfs3/inode.c
index 0a9ac5efeb67..8c788feb319e 100644
--- a/fs/ntfs3/inode.c
+++ b/fs/ntfs3/inode.c
@@ -966,7 +966,7 @@ int ntfs_write_begin(const struct kiocb *iocb, struct address_space *mapping,
 			goto out;
 	}
 
-	err = block_write_begin(mapping, pos, len, foliop,
+	err = block_write_begin(iocb, mapping, pos, len, foliop,
 				ntfs_get_block_write_begin);
 
 out:
diff --git a/fs/omfs/file.c b/fs/omfs/file.c
index 49a1de5a827f..3bade632e36e 100644
--- a/fs/omfs/file.c
+++ b/fs/omfs/file.c
@@ -317,7 +317,7 @@ static int omfs_write_begin(const struct kiocb *iocb,
 {
 	int ret;
 
-	ret = block_write_begin(mapping, pos, len, foliop, omfs_get_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, omfs_get_block);
 	if (unlikely(ret))
 		omfs_write_failed(mapping, pos + len);
 
diff --git a/fs/udf/inode.c b/fs/udf/inode.c
index 7fae8002344a..aec9cdc938be 100644
--- a/fs/udf/inode.c
+++ b/fs/udf/inode.c
@@ -259,7 +259,7 @@ static int udf_write_begin(const struct kiocb *iocb,
 	int ret;
 
 	if (iinfo->i_alloc_type != ICBTAG_FLAG_AD_IN_ICB) {
-		ret = block_write_begin(mapping, pos, len, foliop,
+		ret = block_write_begin(iocb, mapping, pos, len, foliop,
 					udf_get_block);
 		if (unlikely(ret))
 			udf_write_failed(mapping, pos + len);
diff --git a/fs/ufs/inode.c b/fs/ufs/inode.c
index e2b0a35de2a7..dfba985265a8 100644
--- a/fs/ufs/inode.c
+++ b/fs/ufs/inode.c
@@ -481,7 +481,7 @@ static int ufs_write_begin(const struct kiocb *iocb,
 {
 	int ret;
 
-	ret = block_write_begin(mapping, pos, len, foliop, ufs_getfrag_block);
+	ret = block_write_begin(iocb, mapping, pos, len, foliop, ufs_getfrag_block);
 	if (unlikely(ret))
 		ufs_write_failed(mapping, pos + len);
 
diff --git a/include/linux/buffer_head.h b/include/linux/buffer_head.h
index b16b88bfbc3e..4b07dec5f8eb 100644
--- a/include/linux/buffer_head.h
+++ b/include/linux/buffer_head.h
@@ -258,8 +258,9 @@ int __block_write_full_folio(struct inode *inode, struct folio *folio,
 		get_block_t *get_block, struct writeback_control *wbc);
 int block_read_full_folio(struct folio *, get_block_t *);
 bool block_is_partially_uptodate(struct folio *, size_t from, size_t count);
-int block_write_begin(struct address_space *mapping, loff_t pos, unsigned len,
-		struct folio **foliop, get_block_t *get_block);
+int block_write_begin(const struct kiocb *iocb, struct address_space *mapping,
+		loff_t pos, unsigned len, struct folio **foliop,
+		get_block_t *get_block);
 int __block_write_begin(struct folio *folio, loff_t pos, unsigned len,
 		get_block_t *get_block);
 int block_write_end(loff_t pos, unsigned len, unsigned copied, struct folio *);

-- 
2.39.5



_______________________________________________
Jfs-discussion mailing list
Jfs-discussion@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/jfs-discussion
