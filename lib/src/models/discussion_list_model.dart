// ignore_for_file: public_member_api_docs, sort_constructors_first
// To parse this JSON data, do
//
//     final discussion = discussionFromJson(jsonString);

import 'dart:convert';

import 'package:meta/meta.dart';

class DiscussionModel {
  static List<Discussion>? discussions = [];
}

List<Discussion> discussionFromJson(String str) =>
    List<Discussion>.from(json.decode(str).map((x) => Discussion.fromJson(x)));

String discussionToJson(List<Discussion> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));



class Discussion {
  Discussion({
    required this.tid,
    required this.uid,
    required this.cid,
    required this.mainPid,
    required this.title,
    required this.slug,
    required this.timestamp,
    required this.lastposttime,
    required this.postcount,
    required this.viewcount,
    required this.postercount,
    required this.upvotes,
    required this.downvotes,
    required this.teaserPid,
    required this.deleted,
    required this.locked,
    required this.pinned,
    required this.pinExpiry,
    required this.deleterUid,
    required this.titleRaw,
    required this.timestampIso,
    required this.scheduled,
    required this.lastposttimeIso,
    required this.pinExpiryIso,
    required this.votes,
    required this.tags,
    required this.thumbs,
    required this.posts,
    required this.events,
    required this.category,
    required this.tagWhitelist,
    required this.minTags,
    required this.maxTags,
    required this.threadTools,
    required this.isFollowing,
    required this.isNotFollowing,
    required this.isIgnoring,
    required this.bookmark,
    required this.postSharing,
    required this.deleter,
    required this.merger,
    required this.related,
    required this.unreplied,
    required this.icons,
    required this.privileges,
    required this.topicStaleDays,
    required this.reputationDisabled,
    required this.downvoteDisabled,
    required this.feedsDisableRss,
    required this.bookmarkThreshold,
    required this.necroThreshold,
    required this.postEditDuration,
    required this.postDeleteDuration,
    required this.scrollToMyPost,
    required this.updateUrlWithPostIndex,
    required this.allowMultipleBadges,
    required this.privateUploads,
    required this.showPostPreviewsOnHover,
    required this.rssFeedUrl,
    required this.postIndex,
    required this.breadcrumbs,
    required this.pagination,
    required this.loggedIn,
    required this.relativePath,
    required this.template,
    required this.url,
    required this.bodyClass,
    required this.header,
    required this.widgets,
  });

  int tid;
  int uid;
  int cid;
  int mainPid;
  String title;
  String slug;
  int timestamp;
  int lastposttime;
  int postcount;
  int viewcount;
  int postercount;
  int upvotes;
  int downvotes;
  String teaserPid;
  int deleted;
  int locked;
  int pinned;
  int pinExpiry;
  int deleterUid;
  String titleRaw;
  DateTime timestampIso;
  bool scheduled;
  DateTime lastposttimeIso;
  String pinExpiryIso;
  int votes;
  List<dynamic> tags;
  List<dynamic> thumbs;
  List<Post> posts;
  List<dynamic> events;
  Category category;
  List<dynamic> tagWhitelist;
  int minTags;
  int maxTags;
  List<dynamic> threadTools;
  bool isFollowing;
  bool isNotFollowing;
  bool isIgnoring;
  dynamic bookmark;
  List<dynamic> postSharing;
  dynamic deleter;
  dynamic merger;
  List<dynamic> related;
  bool unreplied;
  List<dynamic> icons;
  Privileges privileges;
  int topicStaleDays;
  int reputationDisabled;
  int downvoteDisabled;
  int feedsDisableRss;
  int bookmarkThreshold;
  int necroThreshold;
  int postEditDuration;
  int postDeleteDuration;
  bool scrollToMyPost;
  bool updateUrlWithPostIndex;
  bool allowMultipleBadges;
  bool privateUploads;
  bool showPostPreviewsOnHover;
  String rssFeedUrl;
  int postIndex;
  List<Breadcrumb> breadcrumbs;
  Pagination pagination;
  bool loggedIn;
  String relativePath;
  Template template;
  String url;
  String bodyClass;
  Header header;
  Widgets widgets;

  factory Discussion.fromMap(Map<String, dynamic> map) => Discussion(
        tid: map["tid"],
        uid: map["uid"],
        cid: map["cid"],
        mainPid: map["mainPid"],
        title: map["title"],
        slug: map["slug"],
        timestamp: map["timestamp"],
        lastposttime: map["lastposttime"],
        postcount: map["postcount"],
        viewcount: map["viewcount"],
        postercount: map["postercount"],
        upvotes: map["upvotes"],
        downvotes: map["downvotes"],
        teaserPid: map["teaserPid"],
        deleted: map["deleted"],
        locked: map["locked"],
        pinned: map["pinned"],
        pinExpiry: map["pinExpiry"],
        deleterUid: map["deleterUid"],
        titleRaw: map["titleRaw"],
        timestampIso: DateTime.parse(map["timestampISO"]),
        scheduled: map["scheduled"],
        lastposttimeIso: DateTime.parse(map["lastposttimeISO"]),
        pinExpiryIso: map["pinExpiryISO"],
        votes: map["votes"],
        tags: List<dynamic>.from(map["tags"].map((x) => x)),
        thumbs: List<dynamic>.from(map["thumbs"].map((x) => x)),
        posts: List<Post>.from(map["posts"].map((x) => Post.fromJson(x))),
        events: List<dynamic>.from(map["events"].map((x) => x)),
        category: Category.fromJson(map["category"]),
        tagWhitelist: List<dynamic>.from(map["tagWhitelist"].map((x) => x)),
        minTags: map["minTags"],
        maxTags: map["maxTags"],
        threadTools: List<dynamic>.from(map["thread_tools"].map((x) => x)),
        isFollowing: map["isFollowing"],
        isNotFollowing: map["isNotFollowing"],
        isIgnoring: map["isIgnoring"],
        bookmark: map["bookmark"],
        postSharing: List<dynamic>.from(map["postSharing"].map((x) => x)),
        deleter: map["deleter"],
        merger: map["merger"],
        related: List<dynamic>.from(map["related"].map((x) => x)),
        unreplied: map["unreplied"],
        icons: List<dynamic>.from(map["icons"].map((x) => x)),
        privileges: Privileges.fromJson(map["privileges"]),
        topicStaleDays: map["topicStaleDays"],
        reputationDisabled: map["reputation:disabled"],
        downvoteDisabled: map["downvote:disabled"],
        feedsDisableRss: map["feeds:disableRSS"],
        bookmarkThreshold: map["bookmarkThreshold"],
        necroThreshold: map["necroThreshold"],
        postEditDuration: map["postEditDuration"],
        postDeleteDuration: map["postDeleteDuration"],
        scrollToMyPost: map["scrollToMyPost"],
        updateUrlWithPostIndex: map["updateUrlWithPostIndex"],
        allowMultipleBadges: map["allowMultipleBadges"],
        privateUploads: map["privateUploads"],
        showPostPreviewsOnHover: map["showPostPreviewsOnHover"],
        rssFeedUrl: map["rssFeedUrl"],
        postIndex: map["postIndex"],
        breadcrumbs: List<Breadcrumb>.from(
            map["breadcrumbs"].map((x) => Breadcrumb.fromJson(x))),
        pagination: Pagination.fromJson(map["pagination"]),
        loggedIn: map["loggedIn"],
        relativePath: map["relative_path"],
        template: Template.fromJson(map["template"]),
        url: map["url"],
        bodyClass: map["bodyClass"],
        header: Header.fromJson(map["_header"]),
        widgets: Widgets.fromJson(map["widgets"]),
      );

  toMap() => {
        "tid": tid,
        "uid": uid,
        "cid": cid,
        "mainPid": mainPid,
        "title": title,
        "slug": slug,
        "timestamp": timestamp,
        "lastposttime": lastposttime,
        "postcount": postcount,
        "viewcount": viewcount,
        "postercount": postercount,
        "upvotes": upvotes,
        "downvotes": downvotes,
        "teaserPid": teaserPid,
        "deleted": deleted,
        "locked": locked,
        "pinned": pinned,
        "pinExpiry": pinExpiry,
        "deleterUid": deleterUid,
        "titleRaw": titleRaw,
        "timestampISO": timestampIso.toIso8601String(),
        "scheduled": scheduled,
        "lastposttimeISO": lastposttimeIso.toIso8601String(),
        "pinExpiryISO": pinExpiryIso,
        "votes": votes,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "thumbs": List<dynamic>.from(thumbs.map((x) => x)),
        "posts": List<dynamic>.from(posts.map((x) => x.toJson())),
        "events": List<dynamic>.from(events.map((x) => x)),
        "category": category.toJson(),
        "tagWhitelist": List<dynamic>.from(tagWhitelist.map((x) => x)),
        "minTags": minTags,
        "maxTags": maxTags,
        "thread_tools": List<dynamic>.from(threadTools.map((x) => x)),
        "isFollowing": isFollowing,
        "isNotFollowing": isNotFollowing,
        "isIgnoring": isIgnoring,
        "bookmark": bookmark,
        "postSharing": List<dynamic>.from(postSharing.map((x) => x)),
        "deleter": deleter,
        "merger": merger,
        "related": List<dynamic>.from(related.map((x) => x)),
        "unreplied": unreplied,
        "icons": List<dynamic>.from(icons.map((x) => x)),
        "privileges": privileges.toJson(),
        "topicStaleDays": topicStaleDays,
        "reputation:disabled": reputationDisabled,
        "downvote:disabled": downvoteDisabled,
        "feeds:disableRSS": feedsDisableRss,
        "bookmarkThreshold": bookmarkThreshold,
        "necroThreshold": necroThreshold,
        "postEditDuration": postEditDuration,
        "postDeleteDuration": postDeleteDuration,
        "scrollToMyPost": scrollToMyPost,
        "updateUrlWithPostIndex": updateUrlWithPostIndex,
        "allowMultipleBadges": allowMultipleBadges,
        "privateUploads": privateUploads,
        "showPostPreviewsOnHover": showPostPreviewsOnHover,
        "rssFeedUrl": rssFeedUrl,
        "postIndex": postIndex,
        "breadcrumbs": List<dynamic>.from(breadcrumbs.map((x) => x.toJson())),
        "pagination": pagination.toJson(),
        "loggedIn": loggedIn,
        "relative_path": relativePath,
        "template": template.toJson(),
        "url": url,
        "bodyClass": bodyClass,
        "_header": header.toJson(),
        "widgets": widgets.toJson(),
      };

  factory Discussion.fromJson(Map<String, dynamic> json) => Discussion(
        tid: json["tid"],
        uid: json["uid"],
        cid: json["cid"],
        mainPid: json["mainPid"],
        title: json["title"],
        slug: json["slug"],
        timestamp: json["timestamp"],
        lastposttime: json["lastposttime"],
        postcount: json["postcount"],
        viewcount: json["viewcount"],
        postercount: json["postercount"],
        upvotes: json["upvotes"],
        downvotes: json["downvotes"],
        teaserPid: json["teaserPid"],
        deleted: json["deleted"],
        locked: json["locked"],
        pinned: json["pinned"],
        pinExpiry: json["pinExpiry"],
        deleterUid: json["deleterUid"],
        titleRaw: json["titleRaw"],
        timestampIso: DateTime.parse(json["timestampISO"]),
        scheduled: json["scheduled"],
        lastposttimeIso: DateTime.parse(json["lastposttimeISO"]),
        pinExpiryIso: json["pinExpiryISO"],
        votes: json["votes"],
        tags: List<dynamic>.from(json["tags"].map((x) => x)),
        thumbs: List<dynamic>.from(json["thumbs"].map((x) => x)),
        posts: List<Post>.from(json["posts"].map((x) => Post.fromJson(x))),
        events: List<dynamic>.from(json["events"].map((x) => x)),
        category: Category.fromJson(json["category"]),
        tagWhitelist: List<dynamic>.from(json["tagWhitelist"].map((x) => x)),
        minTags: json["minTags"],
        maxTags: json["maxTags"],
        threadTools: List<dynamic>.from(json["thread_tools"].map((x) => x)),
        isFollowing: json["isFollowing"],
        isNotFollowing: json["isNotFollowing"],
        isIgnoring: json["isIgnoring"],
        bookmark: json["bookmark"],
        postSharing: List<dynamic>.from(json["postSharing"].map((x) => x)),
        deleter: json["deleter"],
        merger: json["merger"],
        related: List<dynamic>.from(json["related"].map((x) => x)),
        unreplied: json["unreplied"],
        icons: List<dynamic>.from(json["icons"].map((x) => x)),
        privileges: Privileges.fromJson(json["privileges"]),
        topicStaleDays: json["topicStaleDays"],
        reputationDisabled: json["reputation:disabled"],
        downvoteDisabled: json["downvote:disabled"],
        feedsDisableRss: json["feeds:disableRSS"],
        bookmarkThreshold: json["bookmarkThreshold"],
        necroThreshold: json["necroThreshold"],
        postEditDuration: json["postEditDuration"],
        postDeleteDuration: json["postDeleteDuration"],
        scrollToMyPost: json["scrollToMyPost"],
        updateUrlWithPostIndex: json["updateUrlWithPostIndex"],
        allowMultipleBadges: json["allowMultipleBadges"],
        privateUploads: json["privateUploads"],
        showPostPreviewsOnHover: json["showPostPreviewsOnHover"],
        rssFeedUrl: json["rssFeedUrl"],
        postIndex: json["postIndex"],
        breadcrumbs: List<Breadcrumb>.from(
            json["breadcrumbs"].map((x) => Breadcrumb.fromJson(x))),
        pagination: Pagination.fromJson(json["pagination"]),
        loggedIn: json["loggedIn"],
        relativePath: json["relative_path"],
        template: Template.fromJson(json["template"]),
        url: json["url"],
        bodyClass: json["bodyClass"],
        header: Header.fromJson(json["_header"]),
        widgets: Widgets.fromJson(json["widgets"]),
      );

  Map<String, dynamic> toJson() => {
        "tid": tid,
        "uid": uid,
        "cid": cid,
        "mainPid": mainPid,
        "title": title,
        "slug": slug,
        "timestamp": timestamp,
        "lastposttime": lastposttime,
        "postcount": postcount,
        "viewcount": viewcount,
        "postercount": postercount,
        "upvotes": upvotes,
        "downvotes": downvotes,
        "teaserPid": teaserPid,
        "deleted": deleted,
        "locked": locked,
        "pinned": pinned,
        "pinExpiry": pinExpiry,
        "deleterUid": deleterUid,
        "titleRaw": titleRaw,
        "timestampISO": timestampIso.toIso8601String(),
        "scheduled": scheduled,
        "lastposttimeISO": lastposttimeIso.toIso8601String(),
        "pinExpiryISO": pinExpiryIso,
        "votes": votes,
        "tags": List<dynamic>.from(tags.map((x) => x)),
        "thumbs": List<dynamic>.from(thumbs.map((x) => x)),
        "posts": List<dynamic>.from(posts.map((x) => x.toJson())),
        "events": List<dynamic>.from(events.map((x) => x)),
        "category": category.toJson(),
        "tagWhitelist": List<dynamic>.from(tagWhitelist.map((x) => x)),
        "minTags": minTags,
        "maxTags": maxTags,
        "thread_tools": List<dynamic>.from(threadTools.map((x) => x)),
        "isFollowing": isFollowing,
        "isNotFollowing": isNotFollowing,
        "isIgnoring": isIgnoring,
        "bookmark": bookmark,
        "postSharing": List<dynamic>.from(postSharing.map((x) => x)),
        "deleter": deleter,
        "merger": merger,
        "related": List<dynamic>.from(related.map((x) => x)),
        "unreplied": unreplied,
        "icons": List<dynamic>.from(icons.map((x) => x)),
        "privileges": privileges.toJson(),
        "topicStaleDays": topicStaleDays,
        "reputation:disabled": reputationDisabled,
        "downvote:disabled": downvoteDisabled,
        "feeds:disableRSS": feedsDisableRss,
        "bookmarkThreshold": bookmarkThreshold,
        "necroThreshold": necroThreshold,
        "postEditDuration": postEditDuration,
        "postDeleteDuration": postDeleteDuration,
        "scrollToMyPost": scrollToMyPost,
        "updateUrlWithPostIndex": updateUrlWithPostIndex,
        "allowMultipleBadges": allowMultipleBadges,
        "privateUploads": privateUploads,
        "showPostPreviewsOnHover": showPostPreviewsOnHover,
        "rssFeedUrl": rssFeedUrl,
        "postIndex": postIndex,
        "breadcrumbs": List<dynamic>.from(breadcrumbs.map((x) => x.toJson())),
        "pagination": pagination.toJson(),
        "loggedIn": loggedIn,
        "relative_path": relativePath,
        "template": template.toJson(),
        "url": url,
        "bodyClass": bodyClass,
        "_header": header.toJson(),
        "widgets": widgets.toJson(),
      };
}

class Breadcrumb {
  Breadcrumb({
    required this.text,
    required this.url,
    required this.cid,
  });

  String text;
  String url;
  int cid;

  factory Breadcrumb.fromJson(Map<String, dynamic> json) => Breadcrumb(
        text: json["text"],
        url: json["url"] == null ? null : json["url"],
        cid: json["cid"] == null ? null : json["cid"],
      );

  Map<String, dynamic> toJson() => {
        "text": text,
        "url": url == null ? null : url,
        "cid": cid == null ? null : cid,
      };
}

class Category {
  Category({
    required this.cid,
    required this.name,
    required this.description,
    required this.descriptionParsed,
    required this.icon,
    required this.bgColor,
    required this.color,
    required this.slug,
    required this.parentCid,
    required this.topicCount,
    required this.postCount,
    required this.disabled,
    required this.order,
    required this.link,
    required this.numRecentReplies,
    required this.categoryClass,
    required this.imageClass,
    required this.isSection,
    required this.contextId,
    required this.minTags,
    required this.maxTags,
    required this.postQueue,
    required this.subCategoriesPerPage,
    required this.totalPostCount,
    required this.totalTopicCount,
  });

  int cid;
  String name;
  String description;
  String descriptionParsed;
  String icon;
  String bgColor;
  String color;
  String slug;
  int parentCid;
  int topicCount;
  int postCount;
  int disabled;
  int order;
  String link;
  int numRecentReplies;
  String categoryClass;
  String imageClass;
  int isSection;
  String contextId;
  int minTags;
  int maxTags;
  int postQueue;
  int subCategoriesPerPage;
  int totalPostCount;
  int totalTopicCount;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        cid: json["cid"],
        name: json["name"],
        description: json["description"],
        descriptionParsed: json["descriptionParsed"],
        icon: json["icon"],
        bgColor: json["bgColor"],
        color: json["color"],
        slug: json["slug"],
        parentCid: json["parentCid"],
        topicCount: json["topic_count"],
        postCount: json["post_count"],
        disabled: json["disabled"],
        order: json["order"],
        link: json["link"],
        numRecentReplies: json["numRecentReplies"],
        categoryClass: json["class"],
        imageClass: json["imageClass"],
        isSection: json["isSection"],
        contextId: json["contextId"],
        minTags: json["minTags"],
        maxTags: json["maxTags"],
        postQueue: json["postQueue"],
        subCategoriesPerPage: json["subCategoriesPerPage"],
        totalPostCount: json["totalPostCount"],
        totalTopicCount: json["totalTopicCount"],
      );

  Map<String, dynamic> toJson() => {
        "cid": cid,
        "name": name,
        "description": description,
        "descriptionParsed": descriptionParsed,
        "icon": icon,
        "bgColor": bgColor,
        "color": color,
        "slug": slug,
        "parentCid": parentCid,
        "topic_count": topicCount,
        "post_count": postCount,
        "disabled": disabled,
        "order": order,
        "link": link,
        "numRecentReplies": numRecentReplies,
        "class": categoryClass,
        "imageClass": imageClass,
        "isSection": isSection,
        "contextId": contextId,
        "minTags": minTags,
        "maxTags": maxTags,
        "postQueue": postQueue,
        "subCategoriesPerPage": subCategoriesPerPage,
        "totalPostCount": totalPostCount,
        "totalTopicCount": totalTopicCount,
      };
}

class Header {
  Header({
    required this.tags,
  });

  Tags tags;

  factory Header.fromJson(Map<String, dynamic> json) => Header(
        tags: Tags.fromJson(json["tags"]),
      );

  Map<String, dynamic> toJson() => {
        "tags": tags.toJson(),
      };
}

class Tags {
  Tags({
    required this.meta,
    required this.link,
  });

  List<Meta> meta;
  List<Link> link;

  factory Tags.fromJson(Map<String, dynamic> json) => Tags(
        meta: List<Meta>.from(json["meta"].map((x) => Meta.fromJson(x))),
        link: List<Link>.from(json["link"].map((x) => Link.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "meta": List<dynamic>.from(meta.map((x) => x.toJson())),
        "link": List<dynamic>.from(link.map((x) => x.toJson())),
      };
}

class Link {
  Link({
    required this.rel,
    required this.type,
    required this.href,
    required this.crossorigin,
    required this.sizes,
  });

  String rel;
  String type;
  String href;
  String crossorigin;
  String sizes;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        rel: json["rel"],
        type: json["type"] == null ? null : json["type"],
        href: json["href"],
        crossorigin: json["crossorigin"] == null ? null : json["crossorigin"],
        sizes: json["sizes"] == null ? null : json["sizes"],
      );

  Map<String, dynamic> toJson() => {
        "rel": rel,
        "type": type == null ? null : type,
        "href": href,
        "crossorigin": crossorigin == null ? null : crossorigin,
        "sizes": sizes == null ? null : sizes,
      };
}

class Meta {
  Meta({
    required this.name,
    required this.content,
    required this.noEscape,
    required this.property,
  });

  String name;
  String content;
  bool noEscape;
  String property;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        name: json["name"] == null ? null : json["name"],
        content: json["content"],
        noEscape: json["noEscape"] == null ? null : json["noEscape"],
        property: json["property"] == null ? null : json["property"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "content": content,
        "noEscape": noEscape == null ? null : noEscape,
        "property": property == null ? null : property,
      };
}

class Pagination {
  Pagination({
    required this.prev,
    required this.next,
    required this.first,
    required this.last,
    required this.rel,
    required this.pages,
    required this.currentPage,
    required this.pageCount,
  });

  First prev;
  First next;
  First first;
  First last;
  List<dynamic> rel;
  List<dynamic> pages;
  int currentPage;
  int pageCount;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        prev: First.fromJson(json["prev"]),
        next: First.fromJson(json["next"]),
        first: First.fromJson(json["first"]),
        last: First.fromJson(json["last"]),
        rel: List<dynamic>.from(json["rel"].map((x) => x)),
        pages: List<dynamic>.from(json["pages"].map((x) => x)),
        currentPage: json["currentPage"],
        pageCount: json["pageCount"],
      );

  Map<String, dynamic> toJson() => {
        "prev": prev.toJson(),
        "next": next.toJson(),
        "first": first.toJson(),
        "last": last.toJson(),
        "rel": List<dynamic>.from(rel.map((x) => x)),
        "pages": List<dynamic>.from(pages.map((x) => x)),
        "currentPage": currentPage,
        "pageCount": pageCount,
      };
}

class First {
  First({
    required this.page,
    required this.active,
  });

  int page;
  bool active;

  factory First.fromJson(Map<String, dynamic> json) => First(
        page: json["page"],
        active: json["active"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "active": active,
      };
}

class Post {
  Post({
    required this.pid,
    required this.uid,
    required this.tid,
    required this.content,
    required this.timestamp,
    required this.upvotes,
    required this.downvotes,
    required this.deleted,
    required this.deleterUid,
    required this.edited,
    required this.replies,
    required this.bookmarks,
    required this.votes,
    required this.timestampIso,
    required this.editedIso,
    required this.index,
    required this.nextPostTimestamp,
    required this.user,
    required this.editor,
    required this.bookmarked,
    required this.upvoted,
    required this.downvoted,
    required this.selfPost,
    required this.topicOwnerPost,
    required this.displayEditTools,
    required this.displayDeleteTools,
    required this.displayModeratorTools,
    required this.displayMoveTools,
    required this.displayPostMenu,
    required this.toPid,
    required this.parent,
  });

  int pid;
  int uid;
  int tid;
  String content;
  int timestamp;
  int upvotes;
  int downvotes;
  int deleted;
  int deleterUid;
  int edited;
  Replies replies;
  int bookmarks;
  int votes;
  DateTime timestampIso;
  String editedIso;
  int index;
  int nextPostTimestamp;
  PostUser user;
  dynamic editor;
  bool bookmarked;
  bool upvoted;
  bool downvoted;
  bool selfPost;
  bool topicOwnerPost;
  bool displayEditTools;
  bool displayDeleteTools;
  bool displayModeratorTools;
  bool displayMoveTools;
  bool displayPostMenu;
  String toPid;
  Parent parent;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
      pid: json["pid"],
      uid: json["uid"],
      tid: json["tid"],
      content: json["content"],
      timestamp: json["timestamp"],
      upvotes: json["upvotes"],
      downvotes: json["downvotes"],
      deleted: json["deleted"],
      deleterUid: json["deleterUid"],
      edited: json["edited"],
      replies: Replies.fromJson(json["replies"]),
      bookmarks: json["bookmarks"],
      votes: json["votes"],
      timestampIso: DateTime.parse(json["timestampISO"]),
      editedIso: json["editedISO"],
      index: json["index"],
      nextPostTimestamp: json["nextPostTimestamp"],
      user: PostUser.fromJson(json["user"]),
      editor: json["editor"],
      bookmarked: json["bookmarked"],
      upvoted: json["upvoted"],
      downvoted: json["downvoted"],
      selfPost: json["selfPost"],
      topicOwnerPost: json["topicOwnerPost"],
      displayEditTools: json["display_edit_tools"],
      displayDeleteTools: json["display_delete_tools"],
      displayModeratorTools: json["display_moderator_tools"],
      displayMoveTools: json["display_move_tools"],
      displayPostMenu: json["display_post_menu"],
      toPid: json["toPid"] == null ? null : json["toPid"],
      parent: Parent.fromJson(json["parent"])
      //parent: json["parent"] == null ? null : Parent.fromJson(json["parent"]),
      );

  Map<String, dynamic> toJson() => {
        "pid": pid,
        "uid": uid,
        "tid": tid,
        "content": content,
        "timestamp": timestamp,
        "upvotes": upvotes,
        "downvotes": downvotes,
        "deleted": deleted,
        "deleterUid": deleterUid,
        "edited": edited,
        "replies": replies.toJson(),
        "bookmarks": bookmarks,
        "votes": votes,
        "timestampISO": timestampIso.toIso8601String(),
        "editedISO": editedIso,
        "index": index,
        "nextPostTimestamp": nextPostTimestamp,
        "user": user.toJson(),
        "editor": editor,
        "bookmarked": bookmarked,
        "upvoted": upvoted,
        "downvoted": downvoted,
        "selfPost": selfPost,
        "topicOwnerPost": topicOwnerPost,
        "display_edit_tools": displayEditTools,
        "display_delete_tools": displayDeleteTools,
        "display_moderator_tools": displayModeratorTools,
        "display_move_tools": displayMoveTools,
        "display_post_menu": displayPostMenu,
        "toPid": toPid == null ? null : toPid,
        "parent": parent == null ? null : parent.toJson(),
      };
}

class Parent {
  Parent({
    required this.username,
  });

  String username;

  factory Parent.fromJson(Map<String, dynamic> json) => Parent(
        username: json["username"],
      );

  Map<String, dynamic> toJson() => {
        "username": username,
      };
}

class Replies {
  Replies({
    required this.hasMore,
    required this.users,
    required this.text,
    required this.count,
    required this.timestampIso,
  });

  bool hasMore;
  List<UserElement> users;
  String text;
  int count;
  DateTime timestampIso;

  factory Replies.fromJson(Map<String, dynamic> json) => Replies(
        hasMore: json["hasMore"],
        users: List<UserElement>.from(
            json["users"].map((x) => UserElement.fromJson(x))),
        text: json["text"],
        count: json["count"],
        timestampIso: DateTime.parse(json["timestampISO"]),

        // timestampIso: json["timestampISO"] == null
        //     ? null
        //     : DateTime.parse(json["timestampISO"]),
      );

  Map<String, dynamic> toJson() => {
        "hasMore": hasMore,
        "users": List<dynamic>.from(users.map((x) => x.toJson())),
        "text": text,
        "count": count,
        "timestampISO":
            timestampIso == null ? null : timestampIso.toIso8601String(),
      };
}

class UserElement {
  UserElement({
    required this.uid,
    required this.username,
    required this.userslug,
    required this.picture,
    required this.fullname,
    required this.displayname,
    required this.iconText,
    required this.iconBgColor,
  });

  int uid;
  String username;
  String userslug;
  dynamic picture;
  dynamic fullname;
  String displayname;
  String iconText;
  String iconBgColor;

  factory UserElement.fromJson(Map<String, dynamic> json) => UserElement(
        uid: json["uid"],
        username: json["username"],
        userslug: json["userslug"],
        picture: json["picture"],
        fullname: json["fullname"],
        displayname: json["displayname"],
        iconText: json["icon:text"],
        iconBgColor: json["icon:bgColor"],
      );

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "username": username,
        "userslug": userslug,
        "picture": picture,
        "fullname": fullname,
        "displayname": displayname,
        "icon:text": iconText,
        "icon:bgColor": iconBgColor,
      };
}

class PostUser {
  PostUser({
    required this.uid,
    required this.username,
    required this.userslug,
    required this.reputation,
    required this.postcount,
    required this.topiccount,
    required this.picture,
    required this.signature,
    required this.banned,
    required this.bannedExpire,
    required this.status,
    required this.lastonline,
    required this.groupTitle,
    required this.displayname,
    required this.groupTitleArray,
    required this.iconText,
    required this.iconBgColor,
    required this.lastonlineIso,
    required this.bannedUntil,
    required this.bannedUntilReadable,
    required this.selectedGroups,
    required this.customProfileInfo,
  });

  int uid;
  String username;
  String userslug;
  int reputation;
  int postcount;
  int topiccount;
  dynamic picture;
  String signature;
  bool banned;
  int bannedExpire;
  String status;
  int lastonline;
  dynamic groupTitle;
  String displayname;
  List<dynamic> groupTitleArray;
  String iconText;
  String iconBgColor;
  DateTime lastonlineIso;
  int bannedUntil;
  String bannedUntilReadable;
  List<dynamic> selectedGroups;
  List<dynamic> customProfileInfo;

  factory PostUser.fromJson(Map<String, dynamic> json) => PostUser(
        uid: json["uid"],
        username: json["username"],
        userslug: json["userslug"],
        reputation: json["reputation"],
        postcount: json["postcount"],
        topiccount: json["topiccount"],
        picture: json["picture"],
        signature: json["signature"],
        banned: json["banned"],
        bannedExpire: json["banned:expire"],
        status: json["status"],
        lastonline: json["lastonline"],
        groupTitle: json["groupTitle"],
        displayname: json["displayname"],
        groupTitleArray:
            List<dynamic>.from(json["groupTitleArray"].map((x) => x)),
        iconText: json["icon:text"],
        iconBgColor: json["icon:bgColor"],
        lastonlineIso: DateTime.parse(json["lastonlineISO"]),
        bannedUntil: json["banned_until"],
        bannedUntilReadable: json["banned_until_readable"],
        selectedGroups:
            List<dynamic>.from(json["selectedGroups"].map((x) => x)),
        customProfileInfo:
            List<dynamic>.from(json["custom_profile_info"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "uid": uid,
        "username": username,
        "userslug": userslug,
        "reputation": reputation,
        "postcount": postcount,
        "topiccount": topiccount,
        "picture": picture,
        "signature": signature,
        "banned": banned,
        "banned:expire": bannedExpire,
        "status": status,
        "lastonline": lastonline,
        "groupTitle": groupTitle,
        "displayname": displayname,
        "groupTitleArray": List<dynamic>.from(groupTitleArray.map((x) => x)),
        "icon:text": iconText,
        "icon:bgColor": iconBgColor,
        "lastonlineISO": lastonlineIso.toIso8601String(),
        "banned_until": bannedUntil,
        "banned_until_readable": bannedUntilReadable,
        "selectedGroups": List<dynamic>.from(selectedGroups.map((x) => x)),
        "custom_profile_info":
            List<dynamic>.from(customProfileInfo.map((x) => x)),
      };
}

class Privileges {
  Privileges({
    required this.topicsReply,
    required this.topicsRead,
    required this.topicsSchedule,
    required this.topicsTag,
    required this.topicsDelete,
    required this.postsEdit,
    required this.postsHistory,
    required this.postsDelete,
    required this.postsViewDeleted,
    required this.read,
    required this.purge,
    required this.viewThreadTools,
    required this.editable,
    required this.deletable,
    required this.viewDeleted,
    required this.viewScheduled,
    required this.isAdminOrMod,
    required this.disabled,
    required this.tid,
    required this.uid,
  });

  bool topicsReply;
  bool topicsRead;
  bool topicsSchedule;
  bool topicsTag;
  bool topicsDelete;
  bool postsEdit;
  bool postsHistory;
  bool postsDelete;
  bool postsViewDeleted;
  bool read;
  bool purge;
  bool viewThreadTools;
  bool editable;
  bool deletable;
  bool viewDeleted;
  bool viewScheduled;
  bool isAdminOrMod;
  int disabled;
  String tid;
  int uid;

  factory Privileges.fromJson(Map<String, dynamic> json) => Privileges(
        topicsReply: json["topics:reply"],
        topicsRead: json["topics:read"],
        topicsSchedule: json["topics:schedule"],
        topicsTag: json["topics:tag"],
        topicsDelete: json["topics:delete"],
        postsEdit: json["posts:edit"],
        postsHistory: json["posts:history"],
        postsDelete: json["posts:delete"],
        postsViewDeleted: json["posts:view_deleted"],
        read: json["read"],
        purge: json["purge"],
        viewThreadTools: json["view_thread_tools"],
        editable: json["editable"],
        deletable: json["deletable"],
        viewDeleted: json["view_deleted"],
        viewScheduled: json["view_scheduled"],
        isAdminOrMod: json["isAdminOrMod"],
        disabled: json["disabled"],
        tid: json["tid"],
        uid: json["uid"],
      );

  Map<String, dynamic> toJson() => {
        "topics:reply": topicsReply,
        "topics:read": topicsRead,
        "topics:schedule": topicsSchedule,
        "topics:tag": topicsTag,
        "topics:delete": topicsDelete,
        "posts:edit": postsEdit,
        "posts:history": postsHistory,
        "posts:delete": postsDelete,
        "posts:view_deleted": postsViewDeleted,
        "read": read,
        "purge": purge,
        "view_thread_tools": viewThreadTools,
        "editable": editable,
        "deletable": deletable,
        "view_deleted": viewDeleted,
        "view_scheduled": viewScheduled,
        "isAdminOrMod": isAdminOrMod,
        "disabled": disabled,
        "tid": tid,
        "uid": uid,
      };
}

class Template {
  Template({
    required this.name,
    required this.topic,
  });

  String name;
  bool topic;

  factory Template.fromJson(Map<String, dynamic> json) => Template(
        name: json["name"],
        topic: json["topic"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "topic": topic,
      };
}

class Widgets {
  Widgets({
    required this.footer,
  });

  List<Footer> footer;

  factory Widgets.fromJson(Map<String, dynamic> json) => Widgets(
        footer:
            List<Footer>.from(json["footer"].map((x) => Footer.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "footer": List<dynamic>.from(footer.map((x) => x.toJson())),
      };
}

class Footer {
  Footer({
    required this.html,
  });

  String html;

  factory Footer.fromJson(Map<String, dynamic> json) => Footer(
        html: json["html"],
      );

  Map<String, dynamic> toJson() => {
        "html": html,
      };
}
